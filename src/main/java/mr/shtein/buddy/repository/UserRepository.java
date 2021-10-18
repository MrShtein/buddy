package mr.shtein.buddy.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

import mr.shtein.buddy.models.Person;

public interface UserRepository extends JpaRepository<Person, Long> {
   Optional<Person> findByEmail(String email);
}
