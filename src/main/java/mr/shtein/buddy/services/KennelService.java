package mr.shtein.buddy.services;

import com.google.gson.Gson;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Optional;

import javax.servlet.http.Part;

import mr.shtein.buddy.models.Kennel;
import mr.shtein.buddy.models.KennelAdministrator;
import mr.shtein.buddy.repository.KennelAdministratorRepository;
import mr.shtein.buddy.repository.KennelRepository;
import mr.shtein.buddy.request.KennelRequest;

@Service
public class KennelService {

    private final KennelRepository kennelRepository;
    private final KennelAdministratorRepository kennelAdministratorRepository;
    private final FilesStorageService filesStorageService;
    private final String DEFAULT_AVT_NAME = "default.jpeg";

    @Autowired

    public KennelService(
            KennelRepository kennelRepository,
            KennelAdministratorRepository kennelAdministratorRepository,
            FilesStorageService filesStorageService
    ) {
        this.kennelRepository = kennelRepository;
        this.kennelAdministratorRepository = kennelAdministratorRepository;
        this.filesStorageService = filesStorageService;
    }

    public Kennel getKennelById(int id) {
        Optional<Kennel> kennelOptional = kennelRepository.findById(id);
        return kennelOptional.orElseThrow(NoSuchFieldError::new);
    }

    public boolean addNewKennel(ArrayList<Part> partsCollection) throws IOException {
        String kennelJson = null;
        InputStream kennelAvatar = null;
        String avtName = null;
        InputStream kennelRequestStream = partsCollection.get(0).getInputStream();
        kennelJson = new String(kennelRequestStream.readAllBytes(), StandardCharsets.UTF_8);
        kennelRequestStream.close();
        if (partsCollection.size() == 2) {
            avtName = filesStorageService.addNewKennelAvatar(partsCollection.get(1));
        } else {
            avtName = DEFAULT_AVT_NAME;
        }

        Gson gson = new Gson();
        KennelRequest kennelRequest = gson.fromJson(kennelJson, KennelRequest.class);
        Kennel kennel = makeKennel(kennelRequest, avtName);
        kennelRepository.save(kennel);

        KennelAdministrator kennelAdministrator = new KennelAdministrator();
        kennelAdministrator.setPersonId(kennelRequest.getUserId());
        kennelAdministrator.setKennelId(kennel.getId());
        kennelAdministratorRepository.save(kennelAdministrator);

        return true;
    }

    private Kennel makeKennel(KennelRequest kennelRequest, String avtName) {
        Kennel kennel = new Kennel();
        kennel.setAvatarUri(avtName);
        kennel.setName(kennelRequest.getKennelName());

        String location = kennelRequest.getKennelCity();
        String cityIdStr = location.split(",")[0];
        Integer cityId = Integer.parseInt(cityIdStr);
        kennel.setLocation(cityId);

        kennel.setPhoneNumber(kennelRequest.getKennelPhoneNum());
        kennel.setStreet(kennelRequest.getKennelStreet());
        kennel.setHouse(kennelRequest.getKennelHouseNum());
        kennel.setEmail(kennelRequest.getKennelEmail());
        kennel.setBuilding(kennelRequest.getKennelBuildingNum());
        kennel.setIdentifyNum(kennelRequest.getKennelIdentifyNum());
        kennel.setIsValid(false);
        return kennel;
    }


}
