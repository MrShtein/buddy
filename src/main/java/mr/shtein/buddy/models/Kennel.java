package mr.shtein.buddy.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "kennel")
public class Kennel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int kennel_id;
    private String title;
    private String city;
    private int house;

    @Column(name = "phone_number")
    private String phoneNumber;
    private String email;

}
