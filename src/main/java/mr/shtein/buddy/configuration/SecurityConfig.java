package mr.shtein.buddy.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;

import mr.shtein.buddy.access.JwtConfigurer;
import mr.shtein.buddy.access.JwtTokenProvider;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {


    @Autowired
    JwtTokenProvider jwtTokenProvider;

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .httpBasic().disable()
                .csrf().disable()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .authorizeRequests()
                .antMatchers(HttpMethod.POST, "/api/v1/auth/**").permitAll()
                .antMatchers(HttpMethod.GET, "/api/v1/animals").permitAll()
                .antMatchers(HttpMethod.GET, "/api/v1/animals/filter/**").permitAll()
                .antMatchers(HttpMethod.GET, "/api/v1/animal/photo/**").permitAll()
                .antMatchers(HttpMethod.GET, "/api/v1/animal/types").permitAll()
                .antMatchers(HttpMethod.GET, "/api/v1/animal/{id}").permitAll()
                .antMatchers(HttpMethod.POST, "/api/v1/user").hasRole("USER")
                .anyRequest().authenticated()
                .and()
                .apply(new JwtConfigurer(jwtTokenProvider));

    }
}

