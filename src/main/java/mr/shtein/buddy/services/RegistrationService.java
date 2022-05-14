package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import mr.shtein.buddy.models.Person;
import mr.shtein.buddy.models.RegistrationRequest;
import mr.shtein.buddy.models.Role;

@Service
public class RegistrationService {

    private final PersonService userDetailsService;
    private final RoleService roleService;
    private final String ROLE_FOR_NEW_USER = "ROLE_USER";

    @Autowired
    public RegistrationService(RoleService roleService, PersonService userDetailsService) {
        this.roleService = roleService;
        this.userDetailsService = userDetailsService;
    }

    public Person register(RegistrationRequest registrationRequest) {
        if (registrationRequest.getEmail().isBlank()) {
            throw new BadCredentialsException("Email is not corrected");
        }
        Person newUser = new Person(registrationRequest);
        Role role = roleService.getRoleByName(ROLE_FOR_NEW_USER);
        newUser.setRole(role);
        newUser.setLocked(false);
        return userDetailsService.signUpUser(newUser);
    }
}
