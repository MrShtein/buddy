package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.UUID;

import javax.servlet.http.Part;

@Service
public class FilesStorageService {

    @Value("${path.photo}")
    private String imagesPath;
    @Value("${path.avatar.kennel}")
    private String kennelAvatarPath;
    @Value("${path.avatar.person}")
    private String personAvatarPath;

    public String addNewKennelAvatar(Part avatarPart) throws IOException {
        String uniqueFileName = UUID.randomUUID().toString();
        String fileExtension = avatarPart.getContentType().split("/")[1];
        String pathBuilder = System.getProperty("user.home") +
                imagesPath +
                kennelAvatarPath +
                uniqueFileName + "." +
                fileExtension;
        Path avatarImgSavePath = Path.of(pathBuilder);
        Files.copy(avatarPart.getInputStream(), avatarImgSavePath, StandardCopyOption.REPLACE_EXISTING);
        return uniqueFileName + fileExtension;
    }

}
