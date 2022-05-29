package mr.shtein.buddy.services;

import mr.shtein.buddy.models.Coordinates;
import mr.shtein.buddy.models.Kennel;
import mr.shtein.buddy.repository.KennelRepository;
import mr.shtein.buddy.utils.DistanceCalculator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service
public class CoordinateService {
    private KennelRepository kennelRepository;

    @Autowired
    public CoordinateService(KennelRepository kennelRepository) {
        this.kennelRepository = kennelRepository;
    }

    public HashMap<Integer, Integer> getAllDistances(Double latitude, Double longitude) {
        DistanceCalculator distanceCalculator = new DistanceCalculator();
        Iterable<Kennel> kennels = kennelRepository.findAll();
        HashMap<Integer, Integer> distances = new HashMap<>();
        kennels.forEach(kennel -> {
            Coordinates kennelCoordinates = new Coordinates(kennel.getLatitude(), kennel.getLongitude());
            Coordinates personCoordinates = new Coordinates(latitude, longitude);
            int distance = distanceCalculator.calculateDistance(kennelCoordinates, personCoordinates);
            distances.put(kennel.getId(), distance);
        });
        return distances;
    }
}
