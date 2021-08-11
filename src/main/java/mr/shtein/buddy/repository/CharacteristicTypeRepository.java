package mr.shtein.buddy.repository;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

import mr.shtein.buddy.models.CharacteristicType;

public interface CharacteristicTypeRepository extends CrudRepository<CharacteristicType, Integer> {
}
