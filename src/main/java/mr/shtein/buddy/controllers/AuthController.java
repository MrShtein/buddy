package mr.shtein.buddy.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;
import mr.shtein.buddy.access.JwtTokenProvider;
import mr.shtein.buddy.models.LoginInfo;
import mr.shtein.buddy.models.LoginRequest;
import mr.shtein.buddy.models.LoginResponse;
import mr.shtein.buddy.models.PasswordCheckRequest;
import mr.shtein.buddy.models.Person;
import mr.shtein.buddy.models.RegistrationRequest;
import mr.shtein.buddy.services.RegistrationService;
import mr.shtein.buddy.services.PersonService;

@RestController
@ResponseBody
@Slf4j
@RequestMapping("/api/v1/auth")
public class AuthController {
    private final RegistrationService registrationService;
    private final JwtTokenProvider jwtTokenProvider;
    private final PersonService personService;
    private final AuthenticationManager authenticationManager;

    @Autowired
    public AuthController(RegistrationService registrationService, JwtTokenProvider jwtTokenProvider, PersonService personService, AuthenticationManager authenticationManager) {
        this.registrationService = registrationService;
        this.jwtTokenProvider = jwtTokenProvider;
        this.personService = personService;
        this.authenticationManager = authenticationManager;
    }

    @PostMapping(path = "/registration")
    public ResponseEntity<?> registration(@RequestBody RegistrationRequest registrationRequest) {
        try {
            registrationService.register(registrationRequest);
            return ResponseEntity.ok(true);
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            return ResponseEntity.ok(false);
        }
    }

    @PostMapping(path = "/login")
    public ResponseEntity<LoginResponse> login(@RequestBody LoginRequest data) {
        LoginInfo loginInfo = new LoginInfo();
        LoginResponse loginResponse = new LoginResponse();
        try {
            String username = data.getEmail();
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, data.getPassword()));
            Person user = personService.loadUserByUsername(username);
            String roleName = user.getRole().getRoleName();
            String token = jwtTokenProvider.createAuthToken(username, roleName);

            loginInfo.setId(user.getId());
            loginInfo.setRole(roleName);
            loginInfo.setToken(token);
            loginInfo.setLogin(username);
            loginInfo.setIsLocked(user.getLocked());
            loginInfo.setLogin(username);
            loginInfo.setName(getNotNullValue(user.getName()));
            loginInfo.setSurname(getNotNullValue(user.getSurname()));
            loginInfo.setPhone(getNotNullValue(user.getPhoneNumber()));
            loginInfo.setGender(getNotNullValue(user.getGender()));
            loginResponse.setLoginInfo(loginInfo);

            return ResponseEntity.ok(loginResponse);
        } catch (Exception e) {
            loginResponse.setError("Не правильно введен логин или пароль");
            return ResponseEntity.ok(loginResponse);
        }
    }

    @PostMapping(path = "/password/check")
    public ResponseEntity<Boolean> passwordCheck(@RequestBody PasswordCheckRequest passwordCheckRequest) {
        Boolean isOldPwdValid = personService
                .isOldPasswordValid(passwordCheckRequest.getPassword(), passwordCheckRequest.getPersonId());
        return new ResponseEntity<Boolean>(isOldPwdValid, HttpStatus.OK);
    }

    private String getNotNullValue(String value) {
        return value == null ? "" : value;
    }

}
