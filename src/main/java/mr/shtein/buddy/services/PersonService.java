package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.CachingUserDetailsService;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import mr.shtein.buddy.models.City;
import mr.shtein.buddy.models.ErrorResponse;
import mr.shtein.buddy.models.Person;
import mr.shtein.buddy.models.PersonRequest;
import mr.shtein.buddy.models.PersonResponse;
import mr.shtein.buddy.repository.CityRepository;
import mr.shtein.buddy.repository.UserRepository;

@Service
public class PersonService implements UserDetailsService {

    private final UserRepository userRepository;
    private final CityRepository cityRepository;
    private final PasswordEncoder passwordEncoder;

    @Autowired
    public PersonService(UserRepository userRepository, CityRepository cityRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.cityRepository = cityRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public Person loadUserByUsername(String email) throws UsernameNotFoundException {
        return userRepository.findByEmail(email).orElseThrow(() -> new UsernameNotFoundException("User not found"));
    }

    public Boolean isEmailExists(String email) {
        Person user = userRepository.findByEmail(email).orElse(null);
        return user != null;
    }

    public Person signUpUser(Person person) {
        String encodedPassword = encodeString(person.getPassword());
        person.setPassword(encodedPassword);
        person.setEnabled(true);
        person = userRepository.save(person);

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
        Person person = userRepository.getById(personId);

        person.setName(personRequest.getName());
        person.setSurname(personRequest.getSurname());
        person.setGender(personRequest.getGender());

        City city = cityRepository.getById(personRequest.getCity_id());

        person.setCity(city);
        person.setPhoneNumber(personRequest.getPhoneNumber());
        person.setEmail(personRequest.getEmail());

        if (!"".equals(personRequest.getPassword())) {
            String encodedPwd = passwordEncoder.encode(personRequest.getPassword());
            person.setPassword(encodedPwd);
        }

        PersonResponse personResponse = new PersonResponse();
        try {
            userRepository.save(person);
            personResponse.setIsUpgrade(true);
        } catch (Exception e) {
            ErrorResponse errorResponse = new ErrorResponse(e.getMessage());
            personResponse.setError(errorResponse);
        }

        return personResponse;

    }

    public Boolean isOldPasswordValid(String passwordForMatch, Long personId) {
        Person currentPerson = userRepository.getById(personId);
        String currentPassword = currentPerson.getPassword();
        return passwordEncoder.matches(passwordForMatch, currentPassword);
    }


}
