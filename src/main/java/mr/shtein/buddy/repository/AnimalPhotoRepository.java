package mr.shtein.buddy.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import mr.shtein.buddy.models.AnimalPhoto;
import mr.shtein.buddy.models.City;
import mr.shtein.buddy.models.PhotoStatus;

public interface AnimalPhotoRepository extends CrudRepository<AnimalPhoto, Long> {
   AnimalPhoto findByUrl(String url);
   ArrayList<AnimalPhoto> findAllByAnimalIdAndStatus(Long animalId, PhotoStatus status);
}
