package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

import mr.shtein.buddy.models.AnimalType;
import mr.shtein.buddy.repository.AnimalTypeRepository;

@Service
public class AnimalTypeService {
    private final AnimalTypeRepository animalTypeRepository;

    @Autowired
    public AnimalTypeService(AnimalTypeRepository animalTypeRepository) {
        this.animalTypeRepository = animalTypeRepository;
    }

    public List<AnimalType> getAllAnimalTypes() {
        Iterable<AnimalType> animalsIter = animalTypeRepository.findAll();
        ArrayList<AnimalType> animals = new ArrayList<>();
        animalsIter.forEach(animals::add);
        return animals;
    }
}
