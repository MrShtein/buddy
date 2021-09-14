package mr.shtein.buddy.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

@RestController
public class PhotoController {

    @Autowired
    public PhotoController() {
    }

    @GetMapping("/animalsPhoto/**")
    public ResponseEntity<FileSystemResource> getAnimalPhoto(HttpServletRequest request) {

        String url = request.getRequestURL().toString().split("/animalsPhoto/")[1];
        String path = System.getProperty("user.home") + "/buddyPhotos/" + url;
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