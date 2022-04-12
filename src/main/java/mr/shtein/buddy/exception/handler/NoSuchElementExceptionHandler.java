package mr.shtein.buddy.exception.handler;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;

import java.util.NoSuchElementException;

import mr.shtein.buddy.response.KennelIncorrectDataResponse;

@ControllerAdvice
public class NoSuchElementExceptionHandler {

    public ResponseEntity<String> handleException(NoSuchElementException exception) {
        return new ResponseEntity<>(exception.getMessage(), HttpStatus.NOT_FOUND);
    }

}
