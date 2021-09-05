package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

import mr.shtein.buddy.models.Animal;
import mr.shtein.buddy.repository.AnimalRepository;

@Service
public class AnimalService {
    private final AnimalRepository animalRepository;

    @Autowired
    public AnimalService(AnimalRepository animalRepository) {
        this.animalRepository = animalRepository;
    }

    public List<Animal> getAll() {
        Iterable<Animal> animalsIter = animalRepository.findAll();
        ArrayList<Animal> animals = new ArrayList<>();
        animalsIter.forEach(animals::add);
        return animals;
    }

    public Boolean add(Animal animal) {
        try {
            animalRepository.save(animal);
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }


}
