package mr.shtein.buddy.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

import mr.shtein.buddy.models.AnimalType;
import mr.shtein.buddy.models.AnimalTypeDTO;
import mr.shtein.buddy.services.AnimalTypeService;
import mr.shtein.buddy.viewmodel.AnimalDTO;

@RestController
@Validated
public class AnimalTypeController {

    private AnimalTypeService animalTypeService;

    @Autowired
    public AnimalTypeController(AnimalTypeService animalService) {
        this.animalTypeService = animalService;
    }

    @GetMapping("/api/v1/animal/types")
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
}
