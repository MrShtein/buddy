package mr.shtein.buddy.exception.handler;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;

import java.nio.file.NoSuchFileException;

import mr.shtein.buddy.exception.IllegalRequestDataException;
import mr.shtein.buddy.exception.NoSuchKennelException;
import mr.shtein.buddy.response.KennelIncorrectDataResponse;

@ControllerAdvice
public class KennelExceptionHandler {

    private static final String NO_SUCH_KENNEL = "К сожалению приюта, который Вы запросили нет.";
    private static final String WRONG_DATA_IN_KENNEL_ADDING = "К сожалению приюта, который Вы запросили нет.";


    public ResponseEntity<KennelIncorrectDataResponse> handleException(NoSuchKennelException exception) {
        KennelIncorrectDataResponse response = new KennelIncorrectDataResponse();
        response.setMessage(NO_SUCH_KENNEL);
        return new ResponseEntity<>(response, HttpStatus.NOT_FOUND);
    }

    public ResponseEntity<KennelIncorrectDataResponse> handleException(IllegalRequestDataException exception) {
        KennelIncorrectDataResponse response = new KennelIncorrectDataResponse();
        response.setMessage(WRONG_DATA_IN_KENNEL_ADDING);
        return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
    }

    public ResponseEntity<KennelIncorrectDataResponse> handleException(NoSuchFileException exception) {
        KennelIncorrectDataResponse response = new KennelIncorrectDataResponse();
        response.setMessage(exception.getMessage());
        return new ResponseEntity<>(response, HttpStatus.NOT_FOUND);
    }

}
