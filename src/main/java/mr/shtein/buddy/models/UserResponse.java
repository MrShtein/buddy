package mr.shtein.buddy.models;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@EqualsAndHashCode
@ToString
public class UserResponse extends BaseResponse {
    private String email;
    private boolean enabled;

    public UserResponse(Person user) {
        this.email = user.getEmail();
    }
}
