package mr.shtein.buddy.request;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class NewAnimalRequest {
    private int years;
    private int months;
    private String name;
    private int breed;
    private Integer colorCharacteristicId;
    private int gender;
    private String description;
    private int kennelId;
    private int personId;
    private Integer animalTypeId;
}


