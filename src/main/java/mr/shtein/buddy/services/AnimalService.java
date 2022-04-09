package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import mr.shtein.buddy.models.Animal;
import mr.shtein.buddy.models.AnimalPhoto;
import mr.shtein.buddy.models.AnimalStatus;
import mr.shtein.buddy.models.AnimalType;
import mr.shtein.buddy.models.Breed;
import mr.shtein.buddy.models.Characteristic;
import mr.shtein.buddy.models.Gender;
import mr.shtein.buddy.models.Kennel;
import mr.shtein.buddy.models.Person;
import mr.shtein.buddy.models.PhotoStatus;
import mr.shtein.buddy.repository.AnimalPhotoRepository;
import mr.shtein.buddy.repository.AnimalRepository;
import mr.shtein.buddy.repository.CharacteristicRepository;
import mr.shtein.buddy.repository.GenderRepository;
import mr.shtein.buddy.repository.KennelRepository;
import mr.shtein.buddy.request.NewAnimalRequest;

@Service
public class AnimalService {
    private final AnimalRepository animalRepository;
    private final AnimalPhotoRepository animalPhotoRepository;
    private final AnimalTypeService animalTypeService;
    private final FilesStorageService storage;
    private final GenderRepository genderRepository;
    private final KennelRepository kennelRepository;
    private final BreedService breedService;
    private final PersonService personService;
    private final CharacteristicRepository characteristicRepository;

    @Autowired
    public AnimalService(AnimalRepository animalRepository, AnimalPhotoRepository animalPhotoRepository, AnimalTypeService animalTypeService, FilesStorageService storage, GenderRepository genderRepository, KennelRepository kennelRepository, BreedService breedService, PersonService personService, CharacteristicRepository characteristicRepository) {
        this.animalRepository = animalRepository;
        this.animalPhotoRepository = animalPhotoRepository;
        this.animalTypeService = animalTypeService;
        this.storage = storage;
        this.genderRepository = genderRepository;
        this.kennelRepository = kennelRepository;
        this.breedService = breedService;
        this.personService = personService;
        this.characteristicRepository = characteristicRepository;
    }

    public List<Animal> getAll() {
        Iterable<Animal> animalsIter = animalRepository.findAllByStatusOrderByIdAsc(AnimalStatus.ACTIVE);
        ArrayList<Animal> animals = new ArrayList<>();
        animalsIter.forEach(animals::add);
        return animals;
    }

    public List<Animal> getAnimalByKennelId(Integer kennelId, Integer animalType) {
        Iterable<Animal> animalsIter = animalRepository.findAllByStatusAndTypeIdAndKennelId(
                AnimalStatus.ACTIVE,
                animalType,
                kennelId
        );
        ArrayList<Animal> animals = new ArrayList<>();
        animalsIter.forEach(animals::add);
        return animals;
    }

    public Animal getAnimalById(Long id) {
        return animalRepository
                .findById(id)
                .orElseThrow();
    }

    public void addNewAnimal(NewAnimalRequest newAnimalRequest) throws IOException {
            Animal newAnimal = new Animal();
            newAnimal.setName(newAnimalRequest.getName());

            Integer animalTypeId = newAnimalRequest.getAnimalTypeId();
            AnimalType animalType = animalTypeService.getAnimalTypeById(animalTypeId);
            newAnimal.setType(animalType);

            Integer genderId = newAnimalRequest.getGenderId();
            Gender gender = genderRepository.findGenderById(genderId);
            newAnimal.setGender(gender);

            int approximateAge = newAnimalRequest.getYears() * 12 + newAnimalRequest.getMonths();
            newAnimal.setApproximateAge(approximateAge);

            int kennelId = newAnimalRequest.getKennelId();
            Kennel kennel = kennelRepository.findById(kennelId).get();
            newAnimal.setKennel(kennel);

            LocalDateTime appearanceDate = LocalDateTime.now();
            newAnimal.setAppearanceDate(appearanceDate);

            newAnimal.setDisappearanceDate(null);

            newAnimal.setStatus(AnimalStatus.ACTIVE);

            String description = newAnimalRequest.getDescription();
            newAnimal.setDescription(description);

            Integer breedId = newAnimalRequest.getBreedId();
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

            storage.delExtraPhotos(newAnimalRequest.getPhotoNamesForDelete());

            ArrayList<String> imagePaths = storage.addNewAnimalImages(newAnimalRequest.getPhotoNamesForCreate());
            if (imagePaths.size() > 0) {
                ArrayList<AnimalPhoto> photoList = new ArrayList<>();
                AnimalPhoto animalPhoto = new AnimalPhoto();
                animalPhoto.setStatus(PhotoStatus.ACTIVE);
                animalPhoto.setUrl(imagePaths.get(0));
                animalPhoto.setIsPrimary(true);
                animalPhoto.setAnimal(addedAnimal);
                photoList.add(animalPhoto);

                for (int i = 1; i < imagePaths.size(); i++) {
                    AnimalPhoto currentPhoto = new AnimalPhoto();
                    currentPhoto.setStatus(PhotoStatus.ACTIVE);
                    currentPhoto.setUrl(imagePaths.get(i));
                    currentPhoto.setIsPrimary(false);
                    currentPhoto.setAnimal(addedAnimal);
                    photoList.add(currentPhoto);
                };
                addedAnimal.setAnimalPhotos(photoList);
                animalRepository.save(addedAnimal);
            }
    }

    public void deleteAnimal(long animalId) {
        LocalDateTime currentDate = LocalDateTime.now();
        Animal animalForDel = animalRepository.findById(animalId).get();
        animalForDel.setStatus(AnimalStatus.REMOVED);
        animalForDel.setDisappearanceDate(currentDate);
        animalRepository.save(animalForDel);
    }

    public String addPhotoToTmpDir(String contentType, byte[] photo) throws IOException {
        return storage.addAnimalPhotoToTmpDir(contentType, photo);
    }

    public void deletePhoto(String url) {
        LocalDateTime currentDate = LocalDateTime.now();
        AnimalPhoto photoForDel = animalPhotoRepository.findByUrl(url);

        if (photoForDel.getIsPrimary()) {
            long currentAnimalId = photoForDel.getAnimal().getId();

            photoForDel.setStatus(PhotoStatus.REMOVED);
            photoForDel.setIsPrimary(false);
            photoForDel.setStatusChangeDate(currentDate);
            animalPhotoRepository.save(photoForDel);

            ArrayList<AnimalPhoto> currentAnimalAllPhotos = animalPhotoRepository
                    .findAllByAnimalIdAndStatus(currentAnimalId, PhotoStatus.ACTIVE);
            if (currentAnimalAllPhotos.size() > 0) {
                AnimalPhoto currentPhoto = currentAnimalAllPhotos.get(0);
                currentPhoto.setIsPrimary(true); // TODO придумать логику выбора главной фотографии
                animalPhotoRepository.save(currentPhoto);
            }
        }


    }

    public int countAllAnimalByKennelId(int kennelId) {
        return animalRepository.countAllByKennelIdAndStatus(kennelId, AnimalStatus.ACTIVE);
    }


}
