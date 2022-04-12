package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;

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
import mr.shtein.buddy.request.AddOrUpdateAnimalRequest;
import mr.shtein.buddy.viewmodel.MiniAnimalDTO;

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

    public void addNewAnimal(AddOrUpdateAnimalRequest addOrUpdateAnimalRequest) throws IOException {
            Animal newAnimal = new Animal();
            newAnimal.setName(addOrUpdateAnimalRequest.getName());

            Integer animalTypeId = addOrUpdateAnimalRequest.getAnimalTypeId();
            AnimalType animalType = animalTypeService.getAnimalTypeById(animalTypeId);
            newAnimal.setType(animalType);

            Integer genderId = addOrUpdateAnimalRequest.getGenderId();
            Gender gender = genderRepository.findGenderById(genderId);
            newAnimal.setGender(gender);

            int approximateAge = addOrUpdateAnimalRequest.getYears() * 12 + addOrUpdateAnimalRequest.getMonths();
            newAnimal.setApproximateAge(approximateAge);

            int kennelId = addOrUpdateAnimalRequest.getKennelId();
            Kennel kennel = kennelRepository.findById(kennelId).get();
            newAnimal.setKennel(kennel);

            LocalDateTime appearanceDate = LocalDateTime.now();
            newAnimal.setAppearanceDate(appearanceDate);

            newAnimal.setDisappearanceDate(null);

            newAnimal.setStatus(AnimalStatus.ACTIVE);

            String description = addOrUpdateAnimalRequest.getDescription();
            newAnimal.setDescription(description);

            Integer breedId = addOrUpdateAnimalRequest.getBreedId();
            Breed breed = breedService.getBreedById(breedId);
            newAnimal.setBreed(breed);

            int personId = addOrUpdateAnimalRequest.getPersonId();
            Person person = personService.getPersonById(personId);
            newAnimal.setPerson(person);

            Integer characteristicId = addOrUpdateAnimalRequest.getColorCharacteristicId();
            Characteristic characteristic = characteristicRepository
                    .findById(characteristicId)
                    .get();
            newAnimal.getCharacteristics().add(characteristic);

            Animal addedAnimal = animalRepository.save(newAnimal);

            storage.delExtraPhotos(addOrUpdateAnimalRequest.getPhotoNamesForDelete());

        saveImages(addOrUpdateAnimalRequest, addedAnimal);
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

    public int countAllAnimalByKennelId(int kennelId) {
        return animalRepository.countAllByKennelIdAndStatus(kennelId, AnimalStatus.ACTIVE);
    }

    public MiniAnimalDTO updateAnimal(AddOrUpdateAnimalRequest animalRequest) throws IOException {
        Animal animal = animalRepository.findById(animalRequest.getAnimalId()).orElseThrow();
        animal.setName(animalRequest.getName());

        Integer genderId = animalRequest.getGenderId();
        Gender gender = genderRepository.findGenderById(genderId);
        animal.setGender(gender);

        int approximateAge = animalRequest.getYears() * 12 + animalRequest.getMonths();
        animal.setApproximateAge(approximateAge);

        String description = animalRequest.getDescription();
        animal.setDescription(description);

        Integer breedId = animalRequest.getBreedId();
        Breed breed = breedService.getBreedById(breedId);
        animal.setBreed(breed);

        Integer characteristicId = animalRequest.getColorCharacteristicId();
        Characteristic characteristic = characteristicRepository
                .findById(characteristicId)
                .orElseThrow();
        animal.getCharacteristics().add(characteristic);

        storage.delExtraPhotos(animalRequest.getPhotoNamesForDelete());
        makeOldPhotoRemoved(animalRequest.getPhotoNamesForDelete());

        ArrayList<AnimalPhoto> animalPhoto = animalPhotoRepository.findAllByAnimalIdAndStatus(
                animalRequest.getAnimalId(), PhotoStatus.ACTIVE
        );
        List<String> photoNamesForCreate = animalRequest.getPhotoNamesForCreate();

        animalPhoto.forEach(photo -> {
            photoNamesForCreate.remove(photo.getUrl());
        });

        saveImages(animalRequest, animal);
        MiniAnimalDTO miniAnimalDTO = new MiniAnimalDTO();
        miniAnimalDTO.from(animal);
        return miniAnimalDTO;

    }

    private void saveImages(AddOrUpdateAnimalRequest animalRequest, Animal animal) throws IOException {
        ArrayList<AnimalPhoto> currentAnimalAllPhotos = animalPhotoRepository
                .findAllByAnimalIdAndStatus(animalRequest.getAnimalId(), PhotoStatus.ACTIVE);
        if (currentAnimalAllPhotos == null) currentAnimalAllPhotos = new ArrayList<>();
        boolean hasPrimaryPhoto = getHasPrimaryPhoto(currentAnimalAllPhotos);
        ArrayList<String> imagePaths = storage.addNewAnimalImages(animalRequest.getPhotoNamesForCreate());
        if (imagePaths.size() > 0) {
            AnimalPhoto animalPhoto = new AnimalPhoto();
            animalPhoto.setStatus(PhotoStatus.ACTIVE);
            animalPhoto.setUrl(imagePaths.get(0));
            animalPhoto.setIsPrimary(!hasPrimaryPhoto);

            animalPhoto.setAnimal(animal);
            currentAnimalAllPhotos.add(animalPhoto);

            for (int i = 1; i < imagePaths.size(); i++) {
                AnimalPhoto currentPhoto = new AnimalPhoto();
                currentPhoto.setStatus(PhotoStatus.ACTIVE);
                currentPhoto.setUrl(imagePaths.get(i));
                currentPhoto.setIsPrimary(false);
                currentPhoto.setAnimal(animal);
                currentAnimalAllPhotos.add(currentPhoto);
            };
            animal.setAnimalPhotos(currentAnimalAllPhotos);
            animalRepository.save(animal);
        }
    }

    private boolean getHasPrimaryPhoto(ArrayList<AnimalPhoto> photos) {
        for (AnimalPhoto photo : photos) {
            if (photo.getIsPrimary()) return true;
        }
        return false;
    }

    private void makeOldPhotoRemoved(List<String> photoUrlList) {
        photoUrlList.forEach(url -> {
            if (url.matches("\\d{4}-\\d{2}-\\d{2}/.+")) {
                LocalDateTime currentDate = LocalDateTime.now();
                AnimalPhoto animalPhoto = animalPhotoRepository.findByUrl(url);
                animalPhoto.setStatus(PhotoStatus.REMOVED);
                animalPhoto.setStatusChangeDate(currentDate);
                animalPhotoRepository.save(animalPhoto);

                if (animalPhoto.getIsPrimary()) {
                    long currentAnimalId = animalPhoto.getAnimal().getId();

                    animalPhoto.setStatus(PhotoStatus.REMOVED);
                    animalPhoto.setIsPrimary(false);
                    animalPhotoRepository.save(animalPhoto);

                    ArrayList<AnimalPhoto> currentAnimalAllPhotos = animalPhotoRepository
                            .findAllByAnimalIdAndStatus(currentAnimalId, PhotoStatus.ACTIVE);
                    if (currentAnimalAllPhotos.size() > 0) {
                        AnimalPhoto currentPhoto = currentAnimalAllPhotos.get(0);
                        currentPhoto.setIsPrimary(true); // TODO придумать логику выбора главной фотографии
                        animalPhotoRepository.save(currentPhoto);
                    }
                }
            }
        });
    }
}
