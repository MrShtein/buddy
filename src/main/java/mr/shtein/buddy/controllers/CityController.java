package mr.shtein.buddy.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import mr.shtein.buddy.response.CityResponse;
import mr.shtein.buddy.services.CityService;
import mr.shtein.buddy.viewmodel.CityDTO;

@RestController
@RequestMapping("/api/v1")
public class CityController {
    private final CityService cityService;

    @Autowired

    public CityController(CityService cityService) {
        this.cityService = cityService;
    }

    @GetMapping("/cities")
    public ResponseEntity<CityResponse> getCities() {
        CityResponse cityResponse = new CityResponse();
        try {
            List<CityDTO> cities = cityService.getAllCities();
            cityResponse.setCitiesList(cities);
            cityResponse.setError("");
        } catch (Exception e) {
            cityResponse.setError(e.getMessage());
        }
        return new ResponseEntity<>(cityResponse, HttpStatus.OK);

    }
}
