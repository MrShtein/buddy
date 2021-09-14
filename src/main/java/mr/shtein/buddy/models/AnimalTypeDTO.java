package mr.shtein.buddy.models;

import lombok.Data;

@Data
public class AnimalTypeDTO {
    private String pluralAnimalType;

    public void from(AnimalType type) {
        this.pluralAnimalType = type.getPluralName();
    }
}
