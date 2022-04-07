package mr.shtein.buddy.services;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import mr.shtein.buddy.models.Person;
import mr.shtein.buddy.models.RegistrationRequest;
import mr.shtein.buddy.models.Role;

@Service
@AllArgsConstructor
public class RegistrationService {

    private final PersonService userDetailsService;
    private final int ROLE_FOR_NEW_USER = 2;

    public Person register(RegistrationRequest registrationRequest) {
        if (registrationRequest.getEmail().isBlank()) {
            throw new BadCredentialsException("Email is not corrected");
        }
        Person newUser = new Person(registrationRequest);
        Role role = new Role();
        role.setId(ROLE_FOR_NEW_USER);
        newUser.setRole(role);
        newUser.setLocked(false);
        return userDetailsService.signUpUser(newUser);
    }
}
