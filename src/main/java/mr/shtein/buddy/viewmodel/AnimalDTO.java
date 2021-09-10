package mr.shtein.buddy.viewmodel;

import java.util.HashMap;
import java.util.List;

import lombok.Data;
import mr.shtein.buddy.models.Animal;
import mr.shtein.buddy.models.Characteristic;

@Data
public class AnimalDTO {
    private long id;
    private String imgUrl;
    private String spices;
    private String name;
    private String kennelName;
    private String gender;
    private int age;
    private String description;
    private String breed;
    private HashMap<String, String> characteristics = new HashMap<>();
    
    public void from(Animal animal) {
        id = animal.getId();
        imgUrl = animal.getPhotoUrl();
        spices = animal.getType().getName();
        name = animal.getName();
        kennelName = animal.getKennel().getTitle();
        gender = animal.getGender().getGender_type();
        age = animal.getApproximateAge();
        description = animal.getDescription();
        breed = animal.getBreed().getName();

        List<Characteristic> characteristicList= animal.getCharacteristics();
        for (Characteristic current : characteristicList) {
            characteristics.put(current.getType().getName(), current.getValue());
        }
    }
}
