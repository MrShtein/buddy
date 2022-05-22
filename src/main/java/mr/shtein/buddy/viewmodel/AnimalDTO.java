package mr.shtein.buddy.viewmodel;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import lombok.Data;
import mr.shtein.buddy.models.Animal;
import mr.shtein.buddy.models.AnimalPhoto;
import mr.shtein.buddy.models.Characteristic;
import mr.shtein.buddy.models.Kennel;

@Data
public class AnimalDTO {
    private long id;
    private List<AnimalPhotoDTO> imgUrl = new ArrayList<>();
    private Integer typeId;
    private String name;
    private String gender;
    private int age;
    private String description;
    private String breed;
    private HashMap<String, String> characteristics = new HashMap<>();
    private KennelDTO kennelDTO;


    public void from(Animal animal) {
        id = animal.getId();
        typeId = animal.getType().getId();
        name = animal.getName();
        gender = animal.getGender().getGender_type();
        age = animal.getApproximateAge();
        description = animal.getDescription();
        breed = animal.getBreed().getName();
        kennelDTO = getKennelDTO(animal.getKennel());

        List<Characteristic> characteristicList = animal.getCharacteristics();
        for (Characteristic current : characteristicList) {
            characteristics.put(current.getType().getName(), current.getValue());
        }

        imgUrl = getAnimalPhotoDTOList(animal);
    }

    private KennelDTO getKennelDTO(Kennel kennel) {
        KennelDTO kennelDTO = new KennelDTO();
        kennelDTO.from(kennel);
        return kennelDTO;
    }

    private List<AnimalPhotoDTO> getAnimalPhotoDTOList(Animal animal) {
        List<AnimalPhoto> photoList = animal.getAnimalPhotos();
        List<AnimalPhotoDTO> photoDTOList = new ArrayList<>();
        photoList.forEach(photo -> {
           AnimalPhotoDTO currentPhotoDTO = new AnimalPhotoDTO();
           currentPhotoDTO.from(photo);
           photoDTOList.add(currentPhotoDTO);
        });
        return photoDTOList;
    }
}
