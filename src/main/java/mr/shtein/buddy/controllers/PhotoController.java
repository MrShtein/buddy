package mr.shtein.buddy.controllers;

import org.hibernate.cfg.Environment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/api/v1")
public class PhotoController {

    @Value("${path.photo}")
    private String pathToBuddyPhotos;
    @Value("${path.animal}")
    private String pathToAnimals;

    @Autowired
    public PhotoController() {
    }

    @GetMapping("/animal/photo/{creation_date}/{file_name}")
    public ResponseEntity<FileSystemResource> getAnimalPhoto(
            @PathVariable("creation_date") String creationDate,
            @PathVariable("file_name") String fileName
    ) {

        String path =
                System.getProperty("user.home") +
                        pathToBuddyPhotos + pathToAnimals + creationDate + "/" + fileName;
        File file = new File(path);
        long fileLength = file.length();

        HttpHeaders respHeader = new HttpHeaders();
        respHeader.setContentType(MediaType.IMAGE_JPEG);
        respHeader.setContentLength(fileLength);
        respHeader.setContentDispositionFormData("attachment", file.getName());

        return new ResponseEntity<>(
                new FileSystemResource(file), respHeader, HttpStatus.OK
        );
    }


}
