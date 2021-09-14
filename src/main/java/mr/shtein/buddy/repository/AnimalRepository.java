package mr.shtein.buddy.repository;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

import mr.shtein.buddy.models.Animal;

public interface AnimalRepository extends CrudRepository<Animal, Long> {
    List<Animal> findAllByKennelCity(String kennel_city);
    List<Animal> findAllByOrderByIdAsc();
}
