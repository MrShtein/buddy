package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import mr.shtein.buddy.models.Breed;
import mr.shtein.buddy.repository.BreedRepository;
import mr.shtein.buddy.viewmodel.BreedDTO;

@Service
public class BreedService {

    private final BreedRepository breedRepository;
    private final AnimalTypeService animalTypeService;

    @Autowired
    public BreedService(BreedRepository breedRepository, AnimalTypeService animalTypeService) {
        this.breedRepository = breedRepository;
        this.animalTypeService = animalTypeService;
    }

    public ArrayList<BreedDTO> getBreedsByAnimalType(String animalType) {
        int animalTypeId = animalTypeService.getAnimalTypeByName(animalType).getId();
        List<Breed> breedsList = breedRepository.findAllByAnimalTypeIdOrderByName(animalTypeId);
        ArrayList<BreedDTO> breedDTOs = new ArrayList<>();
        breedsList.forEach(breed -> {
            BreedDTO breedDTO = new BreedDTO();
            breedDTO.from(breed);
            breedDTOs.add(breedDTO);
        });
        return breedDTOs;
    }

    public Breed getBreedById(Integer breedId) {
        return breedRepository.findById(breedId).get();
    }
}
