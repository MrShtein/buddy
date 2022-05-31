package mr.shtein.buddy.models;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@EqualsAndHashCode
public class PersonRequest {
    private Long id;
    private String name;
    private String surname;
    private String gender;
    private Integer city_id;
    private String phoneNumber;
    private String email;
    private String password;
}
