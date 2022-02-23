package mr.shtein.buddy.repository;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

import mr.shtein.buddy.models.Kennel;

public interface KennelRepository extends CrudRepository<Kennel, Integer> {
    List<Kennel> findAllByAdministratorID(Long personId);
}
