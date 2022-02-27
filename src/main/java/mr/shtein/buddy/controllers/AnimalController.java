package mr.shtein.buddy.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;


import mr.shtein.buddy.models.Animal;
import mr.shtein.buddy.models.AnimalType;
import mr.shtein.buddy.services.AnimalService;
import mr.shtein.buddy.services.AnimalTypeService;
import mr.shtein.buddy.viewmodel.FullAnimalDTO;
import mr.shtein.buddy.viewmodel.MiniAnimalDTO;

@RestController
@Validated
@RequestMapping("/api/v1")
public class AnimalController {

    private final AnimalService animalService;
    private final AnimalTypeService animalTypeService;

    @Autowired
    public AnimalController(AnimalService animalService, AnimalTypeService animalTypeService) {
        this.animalService = animalService;
        this.animalTypeService = animalTypeService;
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

    @GetMapping("animal/kennel/{kennel_id}/{animal_type}")
    public ResponseEntity<List<MiniAnimalDTO>> getAnimalsByKennel(
            @PathVariable("kennel_id") Integer kennelId,
            @PathVariable("animal_type") String animalType
            ) {
        AnimalType animalTypeNum = animalTypeService.getAnimalTypeByName(animalType);
        List<Animal> animals = animalService.getAnimalByKennelId(kennelId, animalTypeNum.getId());
        ArrayList<MiniAnimalDTO> miniAnimalsDTOList = new ArrayList<>();
        animals.forEach(animal -> {
            MiniAnimalDTO miniAnimalDTO = new MiniAnimalDTO();
            miniAnimalDTO.from(animal);
            miniAnimalsDTOList.add(miniAnimalDTO);
        });
        return new ResponseEntity<>(miniAnimalsDTOList, HttpStatus.OK);
    }


    @PostMapping("/animal")
    public ResponseEntity<Boolean> addAnimal(@RequestBody Animal animal) {
        Boolean response = animalService.add(animal);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }


}
