package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.CachingUserDetailsService;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import mr.shtein.buddy.access.JwtTokenProvider;
import mr.shtein.buddy.models.City;
import mr.shtein.buddy.models.ErrorResponse;
import mr.shtein.buddy.models.Person;
import mr.shtein.buddy.models.PersonRequest;
import mr.shtein.buddy.models.PersonResponse;
import mr.shtein.buddy.repository.CityRepository;
import mr.shtein.buddy.repository.PersonRepository;
import mr.shtein.buddy.request.EmailCheckRequest;

@Service
public class PersonService implements UserDetailsService {

    private final PersonRepository personRepository;
    private final CityRepository cityRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtTokenProvider jwtTokenProvider;

    @Autowired
    public PersonService(PersonRepository personRepository, CityRepository cityRepository,
                         PasswordEncoder passwordEncoder, JwtTokenProvider jwtTokenProvider) {
        this.personRepository = personRepository;
        this.cityRepository = cityRepository;
        this.passwordEncoder = passwordEncoder;
        this.jwtTokenProvider = jwtTokenProvider;
    }

    @Override
    public Person loadUserByUsername(String email) throws UsernameNotFoundException {
        return personRepository.findByEmail(email).orElseThrow(() -> new UsernameNotFoundException("User not found"));
    }

    public Boolean isEmailExists(EmailCheckRequest emailCheckRequest) {
        Person user = personRepository.findByEmail(emailCheckRequest.getEmail()).orElse(null);
        return user != null && user.getId() != emailCheckRequest.getPersonId();
    }

    public Person signUpUser(Person person) {
        String encodedPassword = encodeString(person.getPassword());
        person.setPassword(encodedPassword);
        person.setEnabled(true);
        person = personRepository.save(person);

        if (!person.isEnabled()) {
            throw new IllegalStateException("The user is not enabled yet");
        }
        return person;
    }

    private String encodeString(String password) {
        return passwordEncoder.encode(password);
    }

    public Person retrieveFromCache(String email) {
        return (Person) new CachingUserDetailsService(this).loadUserByUsername(email);
    }

    public PersonResponse setUserInfo(PersonRequest personRequest) {
        Long personId = personRequest.getId();
        Person person = personRepository.getById(personId);

        person.setName(personRequest.getName());
        person.setSurname(personRequest.getSurname());
        person.setGender(personRequest.getGender());

        City city = cityRepository.getById(personRequest.getCity_id());

        person.setCity(city);
        person.setPhoneNumber(personRequest.getPhoneNumber());

        PersonResponse personResponse = new PersonResponse();

        if (person.getEmail().equals(personRequest.getEmail())) {
            personResponse.setNewToken("");
        } else {
            String newLogin = personRequest.getEmail();
            String newToken = jwtTokenProvider.createAuthToken(newLogin, person.getRole().getRoleName());
            personResponse.setNewToken(newToken);
            person.setEmail(personRequest.getEmail());
        }


        if (!"".equals(personRequest.getPassword())) {
            String encodedPwd = passwordEncoder.encode(personRequest.getPassword());
            person.setPassword(encodedPwd);
        }

        try {
            personRepository.save(person);
            personResponse.setIsUpgrade(true);
        } catch (Exception e) {
            ErrorResponse errorResponse = new ErrorResponse(e.getMessage());
            personResponse.setError(errorResponse);
        }

        return personResponse;

    }

    public Boolean isOldPasswordValid(String passwordForMatch, Long personId) {
        Person currentPerson = personRepository.getById(personId);
        String currentPassword = currentPerson.getPassword();
        return passwordEncoder.matches(passwordForMatch, currentPassword);
    }

    public Person getPersonById(long personId) {
        return personRepository.getById(personId);
    }

    public void savePerson(Person person) {
        personRepository.save(person);
    }


}
