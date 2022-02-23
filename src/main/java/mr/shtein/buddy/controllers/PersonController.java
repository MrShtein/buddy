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

import java.util.ArrayList;
import java.util.List;

import mr.shtein.buddy.models.Kennel;
import mr.shtein.buddy.models.PersonRequest;
import mr.shtein.buddy.models.PersonResponse;
import mr.shtein.buddy.request.EmailCheckRequest;
import mr.shtein.buddy.request.KennelPreviewResponse;
import mr.shtein.buddy.services.KennelService;
import mr.shtein.buddy.services.PersonService;

@RestController
@Validated
public class PersonController {

    private final PersonService personService;
    private final KennelService kennelService;

    @Autowired
    public PersonController(PersonService personService, KennelService kennelService) {
        this.personService = personService;
        this.kennelService = kennelService;
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

    @GetMapping("/api/v1/person/{personId}/kennel")
    public ResponseEntity<List<KennelPreviewResponse>> getKennels(@PathVariable Long personId) {
        ArrayList<KennelPreviewResponse> kennels = kennelService.getKennelsByPersonId(personId);
        return new ResponseEntity<>(kennels, HttpStatus.OK);
    }
}
