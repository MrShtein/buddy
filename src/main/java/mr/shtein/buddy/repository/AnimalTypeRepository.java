package mr.shtein.buddy.repository;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

import mr.shtein.buddy.models.Animal;
import mr.shtein.buddy.models.AnimalType;

public interface AnimalTypeRepository extends CrudRepository<AnimalType, Long> {
    AnimalType findAnimalTypeByPluralName(String pluralName);
}
