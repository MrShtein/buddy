package mr.shtein.buddy.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import mr.shtein.buddy.models.Animal;
import mr.shtein.buddy.models.AnimalType;
import mr.shtein.buddy.models.AnimalTypeDTO;
import mr.shtein.buddy.request.AddOrUpdateAnimalRequest;
import mr.shtein.buddy.services.AnimalService;
import mr.shtein.buddy.services.AnimalTypeService;
import mr.shtein.buddy.services.BreedService;
import mr.shtein.buddy.services.CharacteristicService;
import mr.shtein.buddy.viewmodel.BreedDTO;
import mr.shtein.buddy.viewmodel.CharacteristicDTO;
import mr.shtein.buddy.viewmodel.AnimalDTO;

@RestController
@Validated
@RequestMapping("/api/v1")
public class AnimalController {

    private final AnimalService animalService;
    private final AnimalTypeService animalTypeService;
    private final BreedService breedService;
    private final CharacteristicService characteristicService;

    @Autowired
    public AnimalController(AnimalService animalService, AnimalTypeService animalTypeService, BreedService breedService, CharacteristicService characteristicService) {
        this.animalService = animalService;
        this.animalTypeService = animalTypeService;
        this.breedService = breedService;
        this.characteristicService = characteristicService;
    }

    @GetMapping("/animal")
    public ResponseEntity<List<AnimalDTO>> getAnimalsByFilter() {
        List<Animal> animals = animalService.getAll();
        List<AnimalDTO> animalsDTO = new ArrayList<>();
        for (Animal animal : animals) {
            AnimalDTO currentMiniAnimalDTO = new AnimalDTO();
            currentMiniAnimalDTO.from(animal);
            animalsDTO.add(currentMiniAnimalDTO);
        }
        return new ResponseEntity<>(animalsDTO, HttpStatus.OK);
    }

    @GetMapping("/animal/{id}")
    public ResponseEntity<AnimalDTO> getAnimalById(@PathVariable Long id) {
        Animal currentAnimal = animalService.getAnimalById(id);
        AnimalDTO animalDTO = new AnimalDTO();
        animalDTO.from(currentAnimal);
        return new ResponseEntity<>(animalDTO, HttpStatus.OK);
    }

    @GetMapping("animal/kennel/{kennel_id}/{animal_type}")
    public ResponseEntity<List<AnimalDTO>> getAnimalsByKennel(
            @PathVariable("kennel_id") Integer kennelId,
            @PathVariable("animal_type") String animalType
            ) {
        AnimalType animalTypeNum = animalTypeService.getAnimalTypeByPluralName(animalType);
        List<Animal> animals = animalService.getAnimalByKennelId(kennelId, animalTypeNum.getId());
        ArrayList<AnimalDTO> miniAnimalsDTOList = new ArrayList<>();
        animals.forEach(animal -> {
            AnimalDTO animalDTO = new AnimalDTO();
            animalDTO.from(animal);
            miniAnimalsDTOList.add(animalDTO);
        });
        return new ResponseEntity<>(miniAnimalsDTOList, HttpStatus.OK);
    }

    @GetMapping("/animal/type")
    public ResponseEntity<List<AnimalTypeDTO>> getAnimalTypes() {
        List<AnimalType> animalTypes = animalTypeService.getAllAnimalTypes();
        List<AnimalTypeDTO> animalTypesDTO = new ArrayList<>();
        for (AnimalType animalType : animalTypes) {
            AnimalTypeDTO currentType = new AnimalTypeDTO();
            currentType.from(animalType);
            animalTypesDTO.add(currentType);
        }
        return new ResponseEntity<>(animalTypesDTO, HttpStatus.OK);
    }

    @GetMapping("/animal/characteristic/{characteristic_id}")
        public ResponseEntity<List<CharacteristicDTO>> getAnimalColors(@PathVariable(name = "characteristic_id") Integer characteristicId) {
            List<CharacteristicDTO> characteristics = characteristicService.getAllCharacteristicByType(characteristicId);
            return new ResponseEntity<>(characteristics, HttpStatus.OK);
        }

    @GetMapping("/animal/{animal_type}/breed")
    public ResponseEntity<List<BreedDTO>> getAnimalBreedByAnimalType(@PathVariable(name = "animal_type") Integer animalType) {
        List<BreedDTO> breedDTOS = breedService.getBreedsByAnimalType(animalType);
        return new ResponseEntity<>(breedDTOS, HttpStatus.OK);
    }

    @PostMapping("/animal")
    public ResponseEntity<Void> addNewAnimal(@RequestBody AddOrUpdateAnimalRequest addOrUpdateAnimalRequest) {
        try {
            animalService.addNewAnimal(addOrUpdateAnimalRequest);
            return new ResponseEntity<>(HttpStatus.CREATED);
        } catch (IOException ex) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PutMapping("/animal")
    public ResponseEntity<AnimalDTO> updateAnimal(@RequestBody AddOrUpdateAnimalRequest animalRequest) {
        try {
            AnimalDTO animalDTO = animalService.updateAnimal(animalRequest);
            return new ResponseEntity<>(animalDTO, HttpStatus.OK);
        } catch (Exception ex) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PostMapping("/animal/photo")
    public ResponseEntity<?> addAnimalPhotoToTmpDir(@RequestHeader("Content-Type") String contentType, @RequestBody byte[] photo) {
        try {
            String photoUrl = animalService.addPhotoToTmpDir(contentType, photo);
            return new ResponseEntity<>(photoUrl, HttpStatus.CREATED);
        } catch (IOException ex) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @DeleteMapping("/animal/{animal_id}")
    public ResponseEntity<Void> deleteAnimal(@PathVariable (name = "animal_id") long animalId) {
        animalService.deleteAnimal(animalId);
        return new ResponseEntity<>(HttpStatus.OK);
    }

//    @DeleteMapping("/animal/photo/{date}/{file_name}")
//    public ResponseEntity<Void> deletePhoto(@PathVariable(name = "date") String date, @PathVariable(name = "file_name") String fileName) {
//        animalService.deletePhoto(date + "/" + fileName);
//        return new ResponseEntity<>(HttpStatus.OK);
//    }




}
