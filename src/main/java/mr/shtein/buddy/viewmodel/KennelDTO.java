package mr.shtein.buddy.viewmodel;

import mr.shtein.buddy.models.City;
import mr.shtein.buddy.models.Coordinates;
import mr.shtein.buddy.models.Kennel;

public class KennelDTO {

    private Integer id;
    private String name;
    private String address;
    private String phoneNumber;
    private String email;
    private String avatarUrl;
    private Coordinates coordinates;

    public void from(Kennel kennel) {
        id = kennel.getId();
        name = kennel.getName();
        address = makeAddressString(kennel);
        phoneNumber = kennel.getPhoneNumber();
        email = kennel.getEmail();
        avatarUrl = kennel.getAvatarUri();
        coordinates = new Coordinates(kennel.getLatitude(), kennel.getLongitude());
    }

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public Coordinates getCoordinates() {
        return coordinates;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public String getAvatarUrl() {
        return avatarUrl;
    }

    private String makeAddressString(Kennel kennel) {
        City city = kennel.getCity();
        StringBuilder sb = new StringBuilder(city.getName());
        sb.append(", ")
                .append(kennel.getStreet())
                .append("д. ")
                .append(kennel.getHouse());
        if (!kennel.getBuilding().isEmpty()) {
            sb.append(", стр. ");
            sb.append(kennel.getBuilding());
        }
        return sb.toString();
    }
}
