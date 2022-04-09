package mr.shtein.buddy.request;

import java.util.List;

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
    private int breedId;
    private Integer colorCharacteristicId;
    private int genderId;
    private String description;
    private int kennelId;
    private int personId;
    private Integer animalTypeId;
    private List<String> photoNamesForCreate;
    private List<String> photoNamesForDelete;
}


