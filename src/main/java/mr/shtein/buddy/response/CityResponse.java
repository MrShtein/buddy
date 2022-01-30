package mr.shtein.buddy.response;

import java.util.List;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import mr.shtein.buddy.viewmodel.CityDTO;

@Getter
@Setter
@NoArgsConstructor
public class CityResponse {
    private List<CityDTO> citiesList;
    private String error;
}
