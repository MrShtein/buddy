package mr.shtein.buddy.repository;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

import mr.shtein.buddy.models.AnimalType;
import mr.shtein.buddy.models.Breed;

public interface BreedRepository extends CrudRepository<Breed, Integer> {
    List<Breed> findAllByAnimalTypeIdOrderByName(int animalTypeId);
}
