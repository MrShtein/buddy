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
import mr.shtein.buddy.request.EmailCheckRequest;
import mr.shtein.buddy.services.PersonService;

@RestController
@Validated
public class PersonController {

    private final PersonService personService;

    @Autowired
    public PersonController(PersonService personService) {
        this.personService = personService;
    }

    @PostMapping("/api/v1/email/exists")
    public ResponseEntity<Boolean> isEmailExistAndTrue(@RequestBody EmailCheckRequest emailCheckRequest) {
        Boolean isExists = personService.isEmailExists(emailCheckRequest);
        return new ResponseEntity<>(isExists, HttpStatus.OK);
    }

    @PostMapping("/api/v1/user")
    public ResponseEntity<?> setUserInfo(@RequestBody PersonRequest person) {
        PersonResponse personResponse = personService.setUserInfo(person);
        return new ResponseEntity<>(personResponse, HttpStatus.OK);
    }
}
