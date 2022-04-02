package mr.shtein.buddy.repository;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

import mr.shtein.buddy.models.Animal;
import mr.shtein.buddy.models.AnimalStatus;

public interface AnimalRepository extends CrudRepository<Animal, Long> {
    List<Animal> findAllByStatusOrderByIdAsc(AnimalStatus status);
    List<Animal> findAllByTypeIdAndKennelId(Integer animalTypeId, Integer kennelId);
    Integer countAllByKennelId(int kennelId);
}
