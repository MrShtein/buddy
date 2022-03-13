package mr.shtein.buddy.models;

import lombok.Data;

@Data
public class AnimalTypeDTO {

    private String pluralAnimalType;
    private String animalType;

    public void from(AnimalType type) {
        this.pluralAnimalType = type.getPluralName();
        this.animalType = type.getName();
    }
}
