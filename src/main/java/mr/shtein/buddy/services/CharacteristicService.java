package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

import mr.shtein.buddy.models.Characteristic;
import mr.shtein.buddy.models.CharacteristicType;
import mr.shtein.buddy.repository.CharacteristicRepository;
import mr.shtein.buddy.repository.CharacteristicTypeRepository;
import mr.shtein.buddy.viewmodel.CharacteristicDTO;

@Service
public class CharacteristicService {
    
    private final CharacteristicTypeRepository characteristicTypeRepository;
    private final CharacteristicRepository characteristicRepository;

    @Autowired
    public CharacteristicService(CharacteristicTypeRepository characteristicTypeRepository, CharacteristicRepository characteristicRepository) {
        this.characteristicTypeRepository = characteristicTypeRepository;
        this.characteristicRepository = characteristicRepository;
    }

    public List<CharacteristicType> getAllCharacteristicType() {
        Iterable<CharacteristicType> characteristicTypes = characteristicTypeRepository.findAll();
        ArrayList<CharacteristicType> types = new ArrayList<>();
        characteristicTypes.forEach(types::add);
        return types;
    }

    public List<CharacteristicDTO> getAllCharacteristicByType(Integer type) {
        List<Characteristic> characteristics = characteristicRepository.findAllByTypeId(type);
        ArrayList<CharacteristicDTO> characteristicDTOList = new ArrayList<>();
        characteristics.forEach(characteristic -> {
            CharacteristicDTO characteristicDTO = new CharacteristicDTO();
            characteristicDTO.from(characteristic);
            characteristicDTOList.add(characteristicDTO);
        });
          return characteristicDTOList;
    }
}
