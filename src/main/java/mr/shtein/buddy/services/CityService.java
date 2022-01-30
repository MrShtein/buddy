package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

import mr.shtein.buddy.models.City;
import mr.shtein.buddy.repository.CityRepository;
import mr.shtein.buddy.viewmodel.CityDTO;

@Service
public class CityService {

    private final CityRepository cityRepository;

    @Autowired

    public CityService(CityRepository cityRepository) {
        this.cityRepository = cityRepository;
    }

    public List<CityDTO> getAllCities() {
        List<City> cities = cityRepository.findAll();
        List<CityDTO> citiesDTO = new ArrayList<>();
        cities.forEach( city -> {
            CityDTO cityDTO = new CityDTO();
            cityDTO.from(city);
            citiesDTO.add(cityDTO);
        });
        return citiesDTO;
    }
}
