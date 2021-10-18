package mr.shtein.buddy.services;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import mr.shtein.buddy.models.Person;

@Service
@Slf4j
@AllArgsConstructor
public class LoginService {
    private final AuthenticationManager authenticationManager;
    private final UserService userService;

    public Person login(String email, String password) {
        authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(email, password));
        return userService.retrieveFromCache(email);
    }
}
