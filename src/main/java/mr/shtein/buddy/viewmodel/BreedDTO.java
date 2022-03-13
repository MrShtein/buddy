package mr.shtein.buddy.viewmodel;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import mr.shtein.buddy.models.Breed;
import mr.shtein.buddy.models.City;

@Setter
@Getter
@NoArgsConstructor
public class BreedDTO {
    private String name;

    public void from(Breed breed) {
        name = breed.getName();
    }
}
