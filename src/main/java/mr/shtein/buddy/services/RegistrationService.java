package mr.shtein.buddy.services;

import mr.shtein.buddy.models.City;
import mr.shtein.buddy.repository.CityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.stereotype.Service;

import mr.shtein.buddy.models.Person;
import mr.shtein.buddy.models.RegistrationRequest;
import mr.shtein.buddy.models.Role;

@Service
public class RegistrationService {

    private final PersonService userDetailsService;
    private final RoleService roleService;
    private final CityRepository cityRepository;
    private final String ROLE_FOR_NEW_USER = "ROLE_USER";

    @Autowired
    public RegistrationService(RoleService roleService, PersonService userDetailsService, CityRepository cityRepository) {
        this.roleService = roleService;
        this.userDetailsService = userDetailsService;
        this.cityRepository = cityRepository;
    }

    public Person register(RegistrationRequest registrationRequest) {
        if (registrationRequest.getEmail().isBlank()) {
            throw new BadCredentialsException("Email is not corrected");
        }
        String cityInfo = registrationRequest.getCityInfo().split(",")[0];
        Integer cityId = Integer.parseInt(cityInfo);
        City city = cityRepository.getById(cityId);
        Person newUser = new Person(registrationRequest, city);
        Role role = roleService.getRoleByName(ROLE_FOR_NEW_USER);
        newUser.setRole(role);
        newUser.setLocked(false);
        return userDetailsService.signUpUser(newUser);
    }
}
