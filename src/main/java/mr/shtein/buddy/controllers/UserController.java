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

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import mr.shtein.buddy.models.Animal;
import mr.shtein.buddy.services.AnimalService;
import mr.shtein.buddy.services.UserService;
import mr.shtein.buddy.viewmodel.FullAnimalDTO;
import mr.shtein.buddy.viewmodel.MiniAnimalDTO;

@RestController
@Validated
public class UserController {

    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/api/v1/email/exists/{email}")
    public ResponseEntity<Boolean> getAnimalsByFilter(@PathVariable String email) {
        Boolean isExists = userService.isEmailExists(email);
        return new ResponseEntity<>(isExists, HttpStatus.OK);
    }
}
