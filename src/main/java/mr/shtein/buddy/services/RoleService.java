package mr.shtein.buddy.services;

import mr.shtein.buddy.models.Role;
import mr.shtein.buddy.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleService {

    private final RoleRepository roleRepository;

    @Autowired
    public RoleService(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }

    Role getRoleByName(String name) {
        return roleRepository.findByRoleName(name);
    }

}
