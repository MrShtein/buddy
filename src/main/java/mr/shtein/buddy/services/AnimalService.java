package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import mr.shtein.buddy.models.Animal;
import mr.shtein.buddy.models.AnimalPhoto;
import mr.shtein.buddy.models.AnimalType;
import mr.shtein.buddy.models.Breed;
import mr.shtein.buddy.models.Characteristic;
import mr.shtein.buddy.models.Gender;
import mr.shtein.buddy.models.Kennel;
import mr.shtein.buddy.models.Person;
import mr.shtein.buddy.repository.AnimalRepository;
import mr.shtein.buddy.repository.CharacteristicRepository;
import mr.shtein.buddy.repository.GenderRepository;
import mr.shtein.buddy.repository.KennelRepository;
import mr.shtein.buddy.request.NewAnimalRequest;

@Service
public class AnimalService {
    private final AnimalRepository animalRepository;
    private final AnimalTypeService animalTypeService;
    private final FilesStorageService storage;
    private final GenderRepository genderRepository;
    private final KennelRepository kennelRepository;
    private final BreedService breedService;
    private final PersonService personService;
    private final CharacteristicRepository characteristicRepository;

    @Autowired
    public AnimalService(AnimalRepository animalRepository, AnimalTypeService animalTypeService, FilesStorageService storage, GenderRepository genderRepository, KennelRepository kennelRepository, BreedService breedService, PersonService personService, CharacteristicRepository characteristicRepository) {
        this.animalRepository = animalRepository;
        this.animalTypeService = animalTypeService;
        this.storage = storage;
        this.genderRepository = genderRepository;
        this.kennelRepository = kennelRepository;
        this.breedService = breedService;
        this.personService = personService;
        this.characteristicRepository = characteristicRepository;
    }

    public List<Animal> getAll() {
        Iterable<Animal> animalsIter = animalRepository.findAllByOrderByIdAsc();
        ArrayList<Animal> animals = new ArrayList<>();
        animalsIter.forEach(animals::add);
        return animals;
    }

    public List<Animal> getAnimalByKennelId(Integer kennelId, Integer animalType) {
        Iterable<Animal> animalsIter = animalRepository.findAllByTypeIdAndKennelId(animalType, kennelId);
        ArrayList<Animal> animals = new ArrayList<>();
        animalsIter.forEach(animals::add);
        return animals;
    }

    public Animal getAnimalById(Long id) {
        return animalRepository
                .findById(id)
                .orElseThrow();
    }

    public void addNewAnimal(MultipartFile[] images, NewAnimalRequest newAnimalRequest) {

        try {
            Animal newAnimal = new Animal();
            newAnimal.setName(newAnimalRequest.getName());

            Integer animalTypeId = newAnimalRequest.getAnimalTypeId();
            AnimalType animalType = animalTypeService.getAnimalTypeById(animalTypeId);
            newAnimal.setType(animalType);

            Integer genderId = newAnimalRequest.getGender();
            Gender gender = genderRepository.findGenderById(genderId);
            newAnimal.setGender(gender);

            int approximateAge = newAnimalRequest.getYears() * 12 + newAnimalRequest.getMonths();
            newAnimal.setApproximateAge(approximateAge);

            int kennelId = newAnimalRequest.getKennelId();
            Kennel kennel = kennelRepository.findById(kennelId).get();
            newAnimal.setKennel(kennel);

            LocalDateTime appearanceDate = LocalDateTime.now();
            newAnimal.setAppearanceDate(appearanceDate);

            newAnimal.setIssueDate(null);

            newAnimal.setExist(true);

            String description = newAnimalRequest.getDescription();
            newAnimal.setDescription(description);

            Integer breedId = newAnimalRequest.getBreed();
            Breed breed = breedService.getBreedById(breedId);
            newAnimal.setBreed(breed);

            int personId = newAnimalRequest.getPersonId();
            Person person = personService.getPersonById(personId);
            newAnimal.setPerson(person);

            Integer characteristicId = newAnimalRequest.getColorCharacteristicId();
            Characteristic characteristic = characteristicRepository
                    .findById(characteristicId)
                    .get();
            newAnimal.getCharacteristics().add(characteristic);

            Animal addedAnimal = animalRepository.save(newAnimal);

            ArrayList<String> imagePaths = storage.addNewAnimalImages(images);
            if (imagePaths.size() > 0) {
                ArrayList<AnimalPhoto> photoList = new ArrayList<>();
                AnimalPhoto animalPhoto = new AnimalPhoto();
                animalPhoto.setUrl(imagePaths.get(0));
                animalPhoto.setIsPrimary(true);
                animalPhoto.setAnimal(addedAnimal);
                photoList.add(animalPhoto);

                for (int i = 1; i < imagePaths.size(); i++) {
                    AnimalPhoto currentPhoto = new AnimalPhoto();
                    currentPhoto.setUrl(imagePaths.get(i));
                    currentPhoto.setIsPrimary(true);
                    currentPhoto.setAnimal(addedAnimal);
                    photoList.add(currentPhoto);
                }
;                addedAnimal.setAnimalPhotos(photoList);
                animalRepository.save(addedAnimal);
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public int countAllAnimalByKennelId(int kennelId) {
        return animalRepository.countAllByKennelId(kennelId);
    }


}
