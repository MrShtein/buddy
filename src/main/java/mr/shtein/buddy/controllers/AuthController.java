package mr.shtein.buddy.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import lombok.AllArgsConstructor;
import lombok.NonNull;
import lombok.extern.slf4j.Slf4j;
import mr.shtein.buddy.access.JwtTokenProvider;
import mr.shtein.buddy.models.ErrorResponse;
import mr.shtein.buddy.models.LoginRequest;
import mr.shtein.buddy.models.Person;
import mr.shtein.buddy.models.RegistrationRequest;
import mr.shtein.buddy.models.UserResponse;
import mr.shtein.buddy.services.LoginService;
import mr.shtein.buddy.services.RegistrationService;

@RestController
@ResponseBody
@RequestMapping("api/v1/auth")
@AllArgsConstructor
@Slf4j
public class AuthController {
    private final RegistrationService registrationService;
    private final LoginService loginService;
    private final JwtTokenProvider jwtTokenProvider;

    @PostMapping(path = "registration")
    public ResponseEntity<?> registration(@RequestBody RegistrationRequest registrationRequest, HttpServletResponse response) {
        try {
            Person user = registrationService.register(registrationRequest);
            setAuthToken(user, response);
            setRefreshToken(user, response);
            return buildUserResponse(user);
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            clearAuthToken(response);
            return buildErrorResponse(e.getLocalizedMessage());
        }
    }

    @PostMapping(path = "login")
    public ResponseEntity<?> login(@RequestBody LoginRequest loginRequest, HttpServletResponse response) {
        try {
            Person user = loginService.login(loginRequest.getEmail(), loginRequest.getPassword());
            setAuthToken(user, response);
            setRefreshToken(user, response);
            return buildUserResponse(user);
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            clearAuthToken(response);
            return buildErrorResponse(e.getLocalizedMessage());
        }
    }

    private void clearAuthToken(HttpServletResponse httpServletResponse) {
        Cookie authCookie = new Cookie(jwtTokenProvider.getAuthCookieName(), "-");
        authCookie.setPath(jwtTokenProvider.getCookiePath());

        Cookie refreshCookie = new Cookie(jwtTokenProvider.getRefreshCookieName(), "-");
        authCookie.setPath(jwtTokenProvider.getCookiePath());

        httpServletResponse.addCookie(authCookie);
        httpServletResponse.addCookie(refreshCookie);
    }

    private void setAuthToken(@NonNull Person user, HttpServletResponse httpServletResponse) {
        String token = jwtTokenProvider.createAuthToken(user.getName(), user.getRole().getRoleName());
        Cookie cookie = new Cookie(jwtTokenProvider.getAuthCookieName(), token);
        cookie.setPath(jwtTokenProvider.getCookiePath());
        cookie.setHttpOnly(true);
        cookie.setMaxAge(jwtTokenProvider.getAuthExpiration());
        httpServletResponse.addCookie(cookie);
    }

    private void setRefreshToken(@NonNull Person user, HttpServletResponse httpServletResponse) {
        String token = jwtTokenProvider.createRefreshToken(user.getName(), user.getRole().getRoleName());
        Cookie cookie = new Cookie(jwtTokenProvider.getRefreshCookieName(), token);
        cookie.setPath(jwtTokenProvider.getCookiePath());
        cookie.setHttpOnly(true);
        cookie.setMaxAge(jwtTokenProvider.getRefreshExpiration());
        httpServletResponse.addCookie(cookie);
    }

    private ResponseEntity<?> buildUserResponse(Person user) {
        return ResponseEntity.ok(new UserResponse(user));
    }

    private ResponseEntity<?> buildErrorResponse(String message) {
        return ResponseEntity.ok(new ErrorResponse(message));
    }
}
