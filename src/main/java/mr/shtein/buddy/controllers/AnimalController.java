package mr.shtein.buddy.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


import mr.shtein.buddy.models.Animal;
import mr.shtein.buddy.services.AnimalService;

@RestController
@Validated
public class AnimalController {

    private final AnimalService animalService;

    @Autowired
    public AnimalController(AnimalService animalService) {
        this.animalService = animalService;
    }

    @GetMapping ("/api/v1/getAnimals")
    public ResponseEntity<List<Animal>> getAnimalsByFilter() {
        return new ResponseEntity<>(animalService.getAllAnimals(), HttpStatus.OK);
    }


}
