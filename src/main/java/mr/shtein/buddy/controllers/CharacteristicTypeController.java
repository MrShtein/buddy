package mr.shtein.buddy.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import mr.shtein.buddy.models.CharacteristicType;
import mr.shtein.buddy.services.CharacteristicTypeService;

@RestController
public class CharacteristicTypeController {

    private CharacteristicTypeService characteristicTypeService;

    @Autowired
    public CharacteristicTypeController(CharacteristicTypeService characteristicTypeService) {
        this.characteristicTypeService = characteristicTypeService;
    }

    @GetMapping("/api/characteristic_types")
    public ResponseEntity<List<CharacteristicType>> getAllCharacteristicTypes() {
        List<CharacteristicType> types = characteristicTypeService.getAllCharacteristicType();
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type", "application/json");
        return new ResponseEntity<>(
                types, headers, HttpStatus.OK
        );
    }
}
