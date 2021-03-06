package mr.shtein.buddy.services;

import com.google.gson.Gson;

import mr.shtein.buddy.models.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.NoSuchFileException;
import java.util.ArrayList;
import java.util.Optional;

import javax.servlet.http.Part;

import mr.shtein.buddy.repository.KennelRepository;
import mr.shtein.buddy.request.KennelPreviewResponse;
import mr.shtein.buddy.request.KennelRequest;

@Service
public class KennelService {

    private final KennelRepository kennelRepository;
    private final AnimalService animalService;
    private final PersonService personService;
    private final RoleService roleService;
    private final CityService cityService;
    private final FilesStorageService filesStorageService;
    private final String DEFAULT_AVT_NAME = "default.jpeg";
    private final String NEW_ROLE_TXT = "ROLE_ADMIN";

    @Autowired

    public KennelService(
            KennelRepository kennelRepository,
            AnimalService animalService, PersonService personService, RoleService roleService, CityService cityService, FilesStorageService filesStorageService
    ) {
        this.kennelRepository = kennelRepository;
        this.animalService = animalService;
        this.personService = personService;
        this.roleService = roleService;
        this.cityService = cityService;
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
        Person currentPerson = personService.getPersonById(kennel.getAdministratorID());
        Role newRole = roleService.getRoleByName(NEW_ROLE_TXT);
        currentPerson.setRole(newRole);
        personService.savePerson(currentPerson);
        kennelRepository.save(kennel);
        return true;
    }

    private Kennel makeKennel(KennelRequest kennelRequest, String avtName) {
        Kennel kennel = new Kennel();
        kennel.setAvatarUri(avtName);
        kennel.setName(kennelRequest.getKennelName());

        String location = kennelRequest.getKennelCity();
        String cityIdStr = location.split(",")[0];
        Integer cityId = Integer.parseInt(cityIdStr);
        City city = cityService.getCityById(cityId);
        kennel.setCity(city);

        kennel.setPhoneNumber(kennelRequest.getKennelPhoneNum());
        kennel.setStreet(kennelRequest.getKennelStreet());
        kennel.setHouse(kennelRequest.getKennelHouseNum());
        kennel.setEmail(kennelRequest.getKennelEmail());
        kennel.setBuilding(kennelRequest.getKennelBuildingNum());
        kennel.setIdentifyNum(kennelRequest.getKennelIdentifyNum());
        kennel.setAdministratorID(kennelRequest.getUserId());
        kennel.setIsValid(false);
        return kennel;
    }

    public Avatar getAvatar(String address) throws NoSuchFileException {
        try {
          return filesStorageService.getKennelAvatar(address);
        } catch (IOException exception) {
            throw new NoSuchFileException("???? ?????????????? ?????????? ???????????? ?? ?????????? ????????????");
        }
    }


    public ArrayList<KennelPreviewResponse> getKennelsByPersonId(Long personId) {
        Iterable<Kennel> kennelsTmp = kennelRepository.findAllByAdministratorID(personId);
        ArrayList<KennelPreviewResponse> kennelsList = new ArrayList<>();
        kennelsTmp.forEach(kennel -> {
            int animalsAmount = animalService.countAllAnimalByKennelId(kennel.getId());
            int volunteersAmount = kennel.getVolunteers().size();
            kennelsList.add(makeKennelPreviewResponse(
                    animalsAmount, volunteersAmount, kennel
            ));

        });
        return kennelsList;
    }

    private KennelPreviewResponse makeKennelPreviewResponse(
            int animalsAmount, int volunteersAmount, Kennel kennel
    ) {
        KennelPreviewResponse kennelPreviewResponse = new KennelPreviewResponse();
        kennelPreviewResponse.setKennelId(kennel.getId());
        kennelPreviewResponse.setName(kennel.getName());
        kennelPreviewResponse.setAnimalsAmount(animalsAmount);
        kennelPreviewResponse.setVolunteersAmount(volunteersAmount);
        kennelPreviewResponse.setIsValid(kennel.getIsValid());
        kennelPreviewResponse.setAvatarUrl(kennel.getAvatarUri());
        return kennelPreviewResponse;
    }
}
