package mr.shtein.buddy.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import mr.shtein.buddy.models.KennelAdministrator;

public interface KennelAdministratorRepository extends CrudRepository<KennelAdministrator, Integer> {
}
