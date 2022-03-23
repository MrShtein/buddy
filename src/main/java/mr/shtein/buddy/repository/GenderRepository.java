package mr.shtein.buddy.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import mr.shtein.buddy.models.Gender;

public interface GenderRepository extends JpaRepository<Gender, Integer> {
   Gender findGenderById(Integer id);
}
