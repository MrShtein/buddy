package mr.shtein.buddy.controllers;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
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

    @GetMapping("/api/v1/photo/{id}")
    public String getPhoto(@PathVariable String id) throws IOException {
        String address = System.getProperty("user.home") + "/buddyPhotos/" + id + "/";
        List<Path> files = Files.list(Paths.get(address)).collect(Collectors.toList());
        files.stream().forEach(x -> System.out.println(x.getFileName()));
        return "Ok";
    }

    @PostMapping("/api/v1/addAnimal")
    public ResponseEntity<Boolean> addAnimal(@RequestBody Animal animal) {
        Boolean response = animalService.add(animal);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }


}
