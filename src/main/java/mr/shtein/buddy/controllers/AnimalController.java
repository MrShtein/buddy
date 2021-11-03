package mr.shtein.buddy.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
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
import mr.shtein.buddy.viewmodel.FullAnimalDTO;
import mr.shtein.buddy.viewmodel.MiniAnimalDTO;

@RestController
@Validated
@RequestMapping("/api/v1")
public class AnimalController {

    private final AnimalService animalService;

    @Autowired
    public AnimalController(AnimalService animalService) {
        this.animalService = animalService;
    }

    @GetMapping("/animals")
    public ResponseEntity<List<MiniAnimalDTO>> getAnimalsByFilter() {
        List<Animal> animals = animalService.getAll();
        List<MiniAnimalDTO> animalsDTO = new ArrayList<>();
        for (Animal animal : animals) {
            MiniAnimalDTO currentMiniAnimalDTO = new MiniAnimalDTO();
            currentMiniAnimalDTO.from(animal);
            animalsDTO.add(currentMiniAnimalDTO);
        }
        return new ResponseEntity<>(animalsDTO, HttpStatus.OK);
    }

    @GetMapping("/animal/{id}")
    public ResponseEntity<FullAnimalDTO> getAnimalById(@PathVariable Long id) {
        Animal currentAnimal = animalService.getAnimalById(id);
        FullAnimalDTO fullAnimalDTO = new FullAnimalDTO();
        fullAnimalDTO.from(currentAnimal);
        return new ResponseEntity<>(fullAnimalDTO, HttpStatus.OK);
    }

//    @GetMapping("/photo/{id}")
//    public String getPhoto(@PathVariable String id) throws IOException {
//        String address = System.getProperty("user.home") + "/buddyPhotos/" + id + "/";
//        List<Path> files = Files.list(Paths.get(address)).collect(Collectors.toList());
//        files.stream().forEach(x -> System.out.println(x.getFileName()));
//        return "Ok";
//    }

    @PostMapping("/animal")
    public ResponseEntity<Boolean> addAnimal(@RequestBody Animal animal) {
        Boolean response = animalService.add(animal);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }


}
