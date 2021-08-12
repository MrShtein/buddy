package mr.shtein.buddy.repository;

import org.springframework.data.repository.CrudRepository;

import mr.shtein.buddy.models.Kennel;

public interface KennelRepository extends CrudRepository<Kennel, Integer> {
}
