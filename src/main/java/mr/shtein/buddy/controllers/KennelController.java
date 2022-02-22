package mr.shtein.buddy.controllers;

import com.google.gson.Gson;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.RequestPartServletServerHttpRequest;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import mr.shtein.buddy.exception.IllegalRequestDataException;
import mr.shtein.buddy.models.Kennel;
import mr.shtein.buddy.request.KennelRequest;
import mr.shtein.buddy.response.KennelResponse;
import mr.shtein.buddy.services.KennelService;

@RestController
public class KennelController {

    private final KennelService kennelService;


    @Autowired

    public KennelController(KennelService kennelService) {
        this.kennelService = kennelService;
    }

    @GetMapping("/api/v1/getAnimal/{id}")
    public Kennel getKennelById(@PathVariable int id) {
        return kennelService.getKennelById(id);
    }

    @PostMapping(path = "/api/v1/kennel", consumes = {MediaType.APPLICATION_JSON_VALUE,MediaType.MULTIPART_FORM_DATA_VALUE})
    public ResponseEntity<Boolean> addNewKennel(HttpServletRequest servletRequest) {
        try {
            ArrayList<Part> requestParts = new ArrayList<>(servletRequest.getParts());
            kennelService.addNewKennel(requestParts);
            return new ResponseEntity<>(true, HttpStatus.OK);
        } catch (ServletException exception) {
            throw new IllegalRequestDataException();
        } catch (IOException exception) {
            throw new IllegalRequestDataException();
        }
    }



}
