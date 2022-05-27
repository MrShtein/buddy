package mr.shtein.buddy.models;

public class Coordinates {
    private Double latitude;
    private Double longitude;

    public Coordinates(Double latitude, Double longitude) {
        this.latitude = latitude * Math.PI / 180;
        this.longitude = longitude * Math.PI / 180;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }
}
