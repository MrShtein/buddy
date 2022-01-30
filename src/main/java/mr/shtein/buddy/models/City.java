package mr.shtein.buddy.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "city")
public class City {

    @Id
    @Column(name = "city_id", nullable = false)
    private Long id;

    @Column(name = "name", length = 50)
    private String name;

    @Column(name = "region", length = 50)
    private String region;

    @Column(name = "latitude", length = 20)
    private String latitude;

    @Column(name = "longitude", length = 20)
    private String longitude;

}
