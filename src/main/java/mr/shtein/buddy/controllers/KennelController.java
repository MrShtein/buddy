package mr.shtein.buddy.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import mr.shtein.buddy.models.Kennel;
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
}
