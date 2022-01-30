package mr.shtein.buddy.models;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class PasswordCheckRequest {
    private String password;
    private Long personId;
}
