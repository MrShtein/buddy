package mr.shtein.buddy.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class Avatar {
    private String contentType;
    private byte[] data;
}
