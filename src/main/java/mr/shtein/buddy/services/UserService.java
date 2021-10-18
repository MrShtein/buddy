package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.CachingUserDetailsService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import mr.shtein.buddy.models.Person;
import mr.shtein.buddy.models.RegistrationRequest;
import mr.shtein.buddy.repository.UserRepository;

@Service
public class UserService implements UserDetailsService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    @Autowired
    public UserService(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
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
}
