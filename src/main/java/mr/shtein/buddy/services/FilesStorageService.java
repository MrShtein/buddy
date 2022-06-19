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
import java.util.List;
import java.util.Objects;
import java.util.UUID;

import javax.servlet.http.Part;

import lombok.Setter;
import mr.shtein.buddy.models.Avatar;

@Service
public class FilesStorageService {

    private String mainPath = System.getProperty("user.home");
    private String tmpFolder = "/temp";
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
        String pathToFolder = mainPath + imagesPath + kennelAvatarPath;
        Files.createDirectories(Path.of(pathToFolder));
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
        String pathToTmpDir = mainPath + imagesPath + tmpFolder;
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

    public ArrayList<String> addNewAnimalImages(List<String> fileNames) throws IOException {
        String currentDate = LocalDate.now().toString();
        ArrayList<String> paths = new ArrayList<>();

        for (String fileName: fileNames) {
            String pathForNewFolder = mainPath + imagesPath + animalPath + currentDate;
            String pathToTmpFolder = mainPath + imagesPath + tmpFolder;
            makeDirectoryIfNotExist(pathForNewFolder);
            String pathForDb = currentDate + "/" + fileName;
            String pathForFile = pathForNewFolder + "/" + fileName;
            paths.add(pathForDb);
                Files.move(Path.of(pathToTmpFolder + "/" + fileName), Path.of(pathForFile));
        };
        return paths;

    }

    public void delExtraPhotos(List<String> photos) throws IOException {
        String pathToExtraPhotos = mainPath + imagesPath + tmpFolder + "/";
        for (String fileName: photos) {
            Path pathToDel = Path.of(pathToExtraPhotos + fileName);
            Files.deleteIfExists(pathToDel);
        };
    }

    private void makeDirectoryIfNotExist(String path) {
        File folder = new File(path);
        if (!folder.exists()) {
            folder.mkdir();
        }
    }

}
