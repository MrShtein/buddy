package mr.shtein.buddy.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

import mr.shtein.buddy.models.City;

public interface CityRepository extends JpaRepository<City, Long> {
   Optional<City> findById(int id);
}
