package mr.shtein.buddy.controllers;

import mr.shtein.buddy.services.CoordinateService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;

@RestController
@RequestMapping("/api/v1")
public class CoordinateController {

    private CoordinateService coordinateService;

    public CoordinateController(CoordinateService coordinateService) {
        this.coordinateService = coordinateService;
    }

    @GetMapping("/distance/")
    public ResponseEntity<HashMap<Integer, Integer>> getAllDistances(
            @RequestParam Double latitude, @RequestParam Double longitude
    ) {
        HashMap<Integer, Integer> distances = coordinateService.getAllDistances(latitude, longitude);
        return new ResponseEntity(distances, HttpStatus.OK);
    }


}
