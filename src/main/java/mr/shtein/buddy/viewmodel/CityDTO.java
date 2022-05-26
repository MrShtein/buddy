package mr.shtein.buddy.viewmodel;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import mr.shtein.buddy.models.City;

@Setter
@Getter
@NoArgsConstructor
public class CityDTO {
    private Integer city_id;
    private String name;
    private String region;

    public void from(City city) {
        city_id = city.getId();
        name = city.getName();
        region = city.getRegion();
    }
}
