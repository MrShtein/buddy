package mr.shtein.buddy.repository;

import org.springframework.data.repository.CrudRepository;

import mr.shtein.buddy.models.Person;

public interface UserRepository extends CrudRepository<Person, Long> {
    Person findByEmail(String email);
}
