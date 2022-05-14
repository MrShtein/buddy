package mr.shtein.buddy.repository;

import mr.shtein.buddy.models.Role;
import org.springframework.data.repository.CrudRepository;

public interface RoleRepository extends CrudRepository<Role, Long> {
    Role findByRoleName(String name);
}
