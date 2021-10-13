package mr.shtein.buddy.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mr.shtein.buddy.models.Person;
import mr.shtein.buddy.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public Boolean isEmailExists(String email) {
        Person user = userRepository.findByEmail(email);
        return user != null;
    }
}