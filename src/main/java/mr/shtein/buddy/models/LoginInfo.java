package mr.shtein.buddy.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class LoginInfo {
    private Long id;
    private String name;
    private String surname;
    private String phone;
    private String token;
    private String login;
    private String role;
    private Boolean isLocked;

}
