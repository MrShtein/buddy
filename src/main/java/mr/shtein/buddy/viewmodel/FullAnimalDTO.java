package mr.shtein.buddy.viewmodel;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import lombok.Data;
import mr.shtein.buddy.models.Animal;
import mr.shtein.buddy.models.AnimalPhoto;
import mr.shtein.buddy.models.Characteristic;

@Data
public class FullAnimalDTO {
    private long id;
    private List<String> imgUrl = new ArrayList<>();
    private String spices;
    private String name;
    private String kennelName;
    private String gender;
    private int age;
    private String description;
    private String breed;
    private String kennelPhoneNumber;
    private String kennelEmail;
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
        kennelPhoneNumber = animal.getKennel().getPhoneNumber();
        kennelEmail = animal.getKennel().getEmail();

        List<Characteristic> characteristicList = animal.getCharacteristics();
        for (Characteristic current : characteristicList) {
            characteristics.put(current.getType().getName(), current.getValue());
        }

        List<AnimalPhoto> photos = animal.getAnimalPhotos();
        photos.forEach(photo -> {
            imgUrl.add(photo.getUrl());
        });
    }
}
