package mr.shtein.buddy.access;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.Date;

import javax.annotation.PostConstruct;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import lombok.extern.slf4j.Slf4j;
import mr.shtein.buddy.models.Person;
import mr.shtein.buddy.services.UserService;

@Component
@Slf4j
public class JwtTokenProvider {

    private final UserService userService;

    public JwtTokenProvider(UserService userService) {
        this.userService = userService;
    }

    @Value("${auth.cookie.secret}")
    private String secretKey;

    @Value("${auth.cookie.auth}")
    private String authCookieName;

    @Value("${auth.cookie.refresh}")
    private String refreshCookieName;

    @Value("${auth.cookie.expiration-auth}")
    private Integer authExpiration;

    @Value("${auth.cookie.expiration-refresh}")
    private Integer refreshExpiration;

    @Value("${auth.cookie.path}")
    private String cookiePath;

    @PostConstruct
    public void init() {
        this.secretKey = Base64.getEncoder().encodeToString(secretKey.getBytes(StandardCharsets.UTF_8));
    }

    public String getAuthCookieName() {
        return authCookieName;
    }

    public String getRefreshCookieName() {
        return refreshCookieName;
    }

    public Integer getAuthExpiration() {
        return authExpiration;
    }

    public Integer getRefreshExpiration() {
        return refreshExpiration;
    }

    public String getCookiePath() {
        return cookiePath;
    }

    public String createAuthToken(String userName, String role) {
        Claims claims = Jwts.claims().setSubject(userName);
        claims.put("role", role);
        Date now = new Date();
        Date valid = new Date(now.getTime() + getAuthExpiration());
        return Jwts.builder()
                .setClaims(claims)
                .setIssuedAt(now)
                .setExpiration(valid)
                .signWith(SignatureAlgorithm.HS256, secretKey)
                .compact();
    }

    public String createRefreshToken(String userName, String role) {
        Claims claims = Jwts.claims().setSubject(userName);
        claims.put("role", role);
        Date now = new Date();
        Date valid = new Date(now.getTime() + getRefreshExpiration());
        return Jwts.builder()
                .setClaims(claims)
                .setIssuedAt(now)
                .setExpiration(valid)
                .signWith(SignatureAlgorithm.HS256, secretKey)
                .compact();
    }

    public Boolean validateToken(String token) {
        try {
            Jws<Claims> claimsJws = Jwts.parser().setSigningKey(secretKey).parseClaimsJws(token);
            return claimsJws.getBody().getExpiration().after(new Date());
        } catch (ExpiredJwtException e) {
            log.error(e.getLocalizedMessage());
        }
        return false;
    }

    public Authentication getAuthentication(String token) {
        Person user = userService.loadUserByUsername(getUserName(token));
        return new UsernamePasswordAuthenticationToken(user, user.getPassword(), user.getAuthorities());
    }

    private String getUserName(String token) {
        return Jwts.parser().setSigningKey(secretKey).parseClaimsJws(token).getBody().getSubject();
    }

    public String resolveToken(HttpServletRequest httpServletRequest) {
        Cookie[] cookies = httpServletRequest.getCookies();
        String res = null;
        if (cookies != null) {
            for (Cookie cookie: cookies) {
                if (cookie.getName().equals(getAuthCookieName())) {
                    res = cookie.getValue();
                }
            }
        }
        return res;
    }
}
