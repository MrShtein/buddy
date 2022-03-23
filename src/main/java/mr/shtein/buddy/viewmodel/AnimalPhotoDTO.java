package mr.shtein.buddy.viewmodel;

import lombok.Data;
import mr.shtein.buddy.models.AnimalPhoto;

@Data
public class AnimalPhotoDTO {
    private String url;
    private boolean isPrimary;
    private long animalId;

    public void from(AnimalPhoto photo) {
        url = photo.getUrl();
        isPrimary = photo.getIsPrimary();
    }
}
