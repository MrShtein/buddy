package mr.shtein.buddy.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

import mr.shtein.buddy.models.Person;

public interface PersonRepository extends JpaRepository<Person, Long> {
   Optional<Person> findByEmail(String email);
}
