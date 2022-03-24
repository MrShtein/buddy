package mr.shtein.buddy.repository;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

import mr.shtein.buddy.models.Animal;
import mr.shtein.buddy.models.Characteristic;

public interface CharacteristicRepository extends CrudRepository<Characteristic, Integer> {
    List<Characteristic> findAllByTypeId(Integer characteristicTypeId);
}
