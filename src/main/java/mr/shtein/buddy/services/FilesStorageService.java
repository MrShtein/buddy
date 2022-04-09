package mr.shtein.buddy.services;

import org.hibernate.exception.DataException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import java.util.UUID;

import javax.servlet.http.Part;

import lombok.Setter;
import mr.shtein.buddy.models.Avatar;

@Service
public class FilesStorageService {

    private String mainPath = System.getProperty("user.home");
    private String imagesPath;
    private String kennelAvatarPath;
    private String personAvatarPath;
    private String animalPath;

    @Autowired
    public FilesStorageService(
            @Value("${path.photo}") String imagesPath,
            @Value("${path.avatar.kennel}") String kennelAvatarPath,
            @Value("${path.avatar.person}") String personAvatarPath,
            @Value("${path.animal}") String animalPath
    ) {
        this.imagesPath = imagesPath;
        this.kennelAvatarPath = kennelAvatarPath;
        this.personAvatarPath = personAvatarPath;
        this.animalPath = animalPath;
    }

    public String addNewKennelAvatar(Part avatarPart) throws IOException {
        String uniqueFileName = UUID.randomUUID().toString();
        String fileExtension = avatarPart.getContentType().split("/")[1];
        String pathBuilder =
                mainPath +
                        imagesPath +
                        kennelAvatarPath +
                        uniqueFileName + "." +
                        fileExtension;
        Path avatarImgSavePath = Path.of(pathBuilder);
        Files.copy(avatarPart.getInputStream(), avatarImgSavePath, StandardCopyOption.REPLACE_EXISTING);
        return uniqueFileName + "." + fileExtension;
    }

    public String addAnimalPhotoToTmpDir(String contentType, byte[] photo) throws IOException {
        String fileName = UUID.randomUUID().toString();
        String fileExt = contentType.split("/")[1];
        String pathToTmpDir = mainPath + imagesPath + "/temp";
        File dir = new File(pathToTmpDir);
        if (!dir.exists()) {
            dir.mkdir();
        }
        String fullPath = pathToTmpDir + "/" + fileName + "." + fileExt;
        Files.write(Path.of(fullPath), photo);
        return fileName + "." + fileExt;
    }

    public Avatar getKennelAvatar(String address) throws IOException {
        Path path = Path.of(System.getProperty("user.home") + imagesPath + kennelAvatarPath + address);
        String contentType = Files.probeContentType(path);
        byte[] data = Files.readAllBytes(path);
        return new Avatar(contentType, data);
    }

    public ArrayList<String> addNewAnimalImages(MultipartFile[] files) {
        String currentDate = LocalDate.now().toString();
        ArrayList<String> paths = new ArrayList<>();
        Arrays.stream(files)
                .forEach(file -> {
                    String fileName = UUID.randomUUID().toString();
                    String fileExtension = Objects.requireNonNull(file.getContentType()).split("/")[1];
                    String pathForNewFolder = mainPath + imagesPath + animalPath + currentDate;
                    makeDirectoryIfNotExist(pathForNewFolder);
                    String pathForDb = currentDate + "/" + fileName + "." + fileExtension;
                    String pathForFile = pathForNewFolder + "/" + fileName + "." + fileExtension;
                    paths.add(pathForDb);
                    try {
                        Files.copy(file.getInputStream(), Path.of(pathForFile), StandardCopyOption.REPLACE_EXISTING);
                    } catch (IOException e) {
                        System.out.println(e.getMessage());
                    }
                });
        return paths;
    }

    private void makeDirectoryIfNotExist(String path) {
        File folder = new File(path);
        if (!folder.exists()) {
            folder.mkdir();
        }
    }

}
