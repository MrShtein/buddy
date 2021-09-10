package mr.shtein.buddy.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


import mr.shtein.buddy.models.Animal;
import mr.shtein.buddy.services.AnimalService;
import mr.shtein.buddy.viewmodel.AnimalDTO;

@RestController
@Validated
public class AnimalController {

    private final AnimalService animalService;

    @Autowired
    public AnimalController(AnimalService animalService) {
        this.animalService = animalService;
    }

    @GetMapping("/api/v1/getAnimals")
    public ResponseEntity<List<AnimalDTO>> getAnimalsByFilter() {
        List<Animal> animals = animalService.getAll();
        List<AnimalDTO> animalsDTO = new ArrayList<>();
        for (Animal animal : animals) {
            AnimalDTO currentAnimalDTO = new AnimalDTO();
            currentAnimalDTO.from(animal);
            animalsDTO.add(currentAnimalDTO);
        }
        return new ResponseEntity<>(animalsDTO, HttpStatus.OK);
    }

    @PostMapping("/api/v1/addAnimal")
    public ResponseEntity<Boolean> addAnimal(@RequestBody Animal animal) {
        Boolean response = animalService.add(animal);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }


}
