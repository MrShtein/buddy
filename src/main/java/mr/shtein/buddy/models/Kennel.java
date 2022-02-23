package mr.shtein.buddy.models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
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
    @Column(name = "kennel_id", nullable = false)
    private Integer id;

    @Column(name = "name")
    private String name;

    @Column(name = "location", nullable = false)
    private Integer location;

    @Column(name = "street", nullable = false)
    private String street;

    @Column(name = "house", nullable = false, length = 10)
    private String house;

    @Column(name = "phone_number", nullable = false, length = 20)
    private String phoneNumber;

    @Column(name = "email", nullable = false, length = 50)
    private String email;

    @Column(name = "building", length = 15)
    private String building;

    @Column(name = "avatar_uri", length = 50)
    private String avatarUri;

    @Column(name = "identify_num")
    private Long identifyNum;

    @Column(name = "is_valid", nullable = false)
    private Boolean isValid = false;

    @Column(name = "administrator_id", nullable = false)
    private Long administratorID;

    @ManyToMany
    @JoinTable(
            name = "volunteer",
            joinColumns = @JoinColumn(name = "kennel_id"),
            inverseJoinColumns = @JoinColumn(name = "person_id")
    )
    private List<Person> volunteers;



}
