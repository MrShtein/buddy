package mr.shtein.buddy.models;

import lombok.Data;

@Data
public class AnimalTypeDTO {

    private Integer id;
    private String pluralAnimalType;
    private String animalType;

    public void from(AnimalType type) {
        this.id = type.getId();
        this.pluralAnimalType = type.getPluralName();
        this.animalType = type.getName();
    }
}
