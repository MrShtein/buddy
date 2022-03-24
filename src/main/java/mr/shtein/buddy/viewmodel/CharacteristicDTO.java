package mr.shtein.buddy.viewmodel;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import mr.shtein.buddy.models.Breed;
import mr.shtein.buddy.models.Characteristic;

@Setter
@Getter
@NoArgsConstructor
public class CharacteristicDTO {
    private Integer id;
    private String name;

    public void from(Characteristic characteristic) {
        id = characteristic.getId();
        name = characteristic.getValue();
    }
}
