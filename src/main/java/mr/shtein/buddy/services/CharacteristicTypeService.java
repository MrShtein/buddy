package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

import mr.shtein.buddy.models.CharacteristicType;
import mr.shtein.buddy.repository.CharacteristicTypeRepository;

@Service
public class CharacteristicTypeService {
    
    private final CharacteristicTypeRepository characteristicTypeRepository;

    @Autowired
    public CharacteristicTypeService(CharacteristicTypeRepository characteristicTypeRepository) {
        this.characteristicTypeRepository = characteristicTypeRepository;
    }

    public List<CharacteristicType> getAllCharacteristicType() {
        Iterable<CharacteristicType> characteristicTypes = characteristicTypeRepository.findAll();
        ArrayList<CharacteristicType> types = new ArrayList<>();
        characteristicTypes.forEach(types::add);
        return types;
    }
}
