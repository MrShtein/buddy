package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

import mr.shtein.buddy.models.Kennel;
import mr.shtein.buddy.repository.KennelRepository;

@Service
public class KennelService {
    private final KennelRepository kennelRepository;

    @Autowired

    public KennelService(KennelRepository kennelRepository) {
        this.kennelRepository = kennelRepository;
    }

    public Kennel getKennelById(int id) {
        Optional<Kennel> kennelOptional = kennelRepository.findById(id);
        return kennelOptional.orElse(null);
    }
}
