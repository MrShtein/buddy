package mr.shtein.buddy.request;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class KennelPreviewResponse {
    private int kennelId;
    private int volunteersAmount;
    private int animalsAmount;
    private String name;
    private String avatarUrl;
    private Boolean isValid;
}
