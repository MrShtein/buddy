package mr.shtein.buddy.viewmodel;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import lombok.Data;
import mr.shtein.buddy.models.*;

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
    private KennelDTO kennel;

    private String distance;


    public void from(Animal animal) {
        id = animal.getId();
        typeId = animal.getType().getId();
        name = animal.getName();
        gender = animal.getGender().getGender_type();
        age = animal.getApproximateAge();
        description = animal.getDescription();
        breed = animal.getBreed().getName();
        kennel = getKennel(animal.getKennel());
        distance = "";

        List<Characteristic> characteristicList = animal.getCharacteristics();
        for (Characteristic current : characteristicList) {
            characteristics.put(current.getType().getName(), current.getValue());
        }

        imgUrl = getAnimalPhotoDTOList(animal);
    }

    private KennelDTO getKennel(Kennel kennel) {
        KennelDTO kennelDTO = new KennelDTO();
        kennelDTO.from(kennel);
        return kennelDTO;
    }

    private List<AnimalPhotoDTO> getAnimalPhotoDTOList(Animal animal) {
        List<AnimalPhoto> photoList = animal.getAnimalPhotos();
        List<AnimalPhotoDTO> photoDTOList = new ArrayList<>();
        photoList.stream()
                .filter(photo -> {
                    return photo.getStatus() == PhotoStatus.ACTIVE;
                })
                .forEach(photo -> {
                    AnimalPhotoDTO currentPhotoDTO = new AnimalPhotoDTO();
                    currentPhotoDTO.from(photo);
                    photoDTOList.add(currentPhotoDTO);
                });

        return photoDTOList;
    }
}
