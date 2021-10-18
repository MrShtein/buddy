package mr.shtein.buddy.services;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import mr.shtein.buddy.models.Person;
import mr.shtein.buddy.models.RegistrationRequest;

@Service
@AllArgsConstructor
public class RegistrationService {
    private final UserService userDetailsService;

    public Person register(RegistrationRequest registrationRequest) {
        if (registrationRequest.getEmail().isBlank()) {
            throw new BadCredentialsException("Email is not corrected");
        }
        return userDetailsService.signUpUser(new Person(registrationRequest));
    }
}
