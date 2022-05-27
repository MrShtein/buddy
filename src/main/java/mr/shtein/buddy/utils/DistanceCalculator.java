package mr.shtein.buddy.utils;

import mr.shtein.buddy.models.Coordinates;

public class DistanceCalculator {
    public static final Integer EARTH_RADIUS_IN_METERS = 6372795;

    public Double calculateDistance(Coordinates firstPoint, Coordinates secondPoint) {
        Double one = Math.pow(
                Math.sin((secondPoint.getLatitude() - firstPoint.getLatitude()) / 2),
                2
        );
        Double two = Math.cos(firstPoint.getLatitude()) * Math.cos(secondPoint.getLatitude()) *
                Math.pow(
                        Math.sin((secondPoint.getLongitude() - firstPoint.getLongitude()) / 2),
                        2
                );
        Double three = Math.sqrt(one + two);
        Double d = 2 * Math.asin(three);
        return d * EARTH_RADIUS_IN_METERS;
    }
}


