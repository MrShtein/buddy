package mr.shtein.buddy.request;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class EmailCheckRequest {
    private String email;
    private Long personId;
}
