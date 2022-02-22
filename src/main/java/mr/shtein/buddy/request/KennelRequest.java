package mr.shtein.buddy.request;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class KennelRequest {
    private Long userId;
    private String kennelAvtUri;
    private String kennelName;
    private String kennelPhoneNum;
    private String kennelEmail;
    private String kennelCity;
    private String kennelStreet;
    private String kennelHouseNum;
    private String kennelBuildingNum;
    private Long kennelIdentifyNum;
}


