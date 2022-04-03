package mr.shtein.buddy.viewmodel;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import lombok.Data;
import mr.shtein.buddy.models.Animal;
import mr.shtein.buddy.models.AnimalPhoto;
import mr.shtein.buddy.models.Characteristic;
import mr.shtein.buddy.models.PhotoStatus;

@Data
public class MiniAnimalDTO {
    private long id;
    private String spices;
    private String name;
    private String kennelName;
    private String gender;
    private int age;
    private String description;
    private String breed;
    private List<AnimalPhotoDTO> imgUrl = new ArrayList<>();
    private HashMap<String, String> characteristics = new HashMap<>();

    public void from(Animal animal) {
        id = animal.getId();
        spices = animal.getType().getName();
        name = animal.getName();
        kennelName = animal.getKennel().getName();
        gender = animal.getGender().getGender_type();
        age = animal.getApproximateAge();
        description = animal.getDescription();
        breed = animal.getBreed().getName();

        List<Characteristic> characteristicList = animal.getCharacteristics();
        for (Characteristic current : characteristicList) {
            characteristics.put(current.getType().getName(), current.getValue());
        }

        List<AnimalPhoto> photos = animal.getAnimalPhotos();
        photos.forEach(photo -> {
            if (photo.getStatus() == PhotoStatus.ACTIVE) {
                AnimalPhotoDTO current = new AnimalPhotoDTO();
                current.from(photo);
                imgUrl.add(current);
            }
        });
    }
}
