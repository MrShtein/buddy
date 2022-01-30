package mr.shtein.buddy.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import mr.shtein.buddy.models.PersonRequest;
import mr.shtein.buddy.models.PersonResponse;
import mr.shtein.buddy.services.PersonService;

@RestController
@Validated
public class UserController {

    private final PersonService personService;

    @Autowired
    public UserController(PersonService personService) {
        this.personService = personService;
    }

    @GetMapping("/api/v1/email/exists/{email}")
    public ResponseEntity<Boolean> getAnimalsByFilter(@PathVariable String email) {
        Boolean isExists = personService.isEmailExists(email);
        return new ResponseEntity<>(isExists, HttpStatus.OK);
    }

    @PostMapping("/api/v1/user")
    public ResponseEntity<?> setUserInfo(@RequestBody PersonRequest person) {
        PersonResponse personResponse = personService.setUserInfo(person);
        return new ResponseEntity<>(personResponse, HttpStatus.OK);
    }
}
