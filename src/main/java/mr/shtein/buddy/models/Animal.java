package mr.shtein.buddy.models;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "animal")
public class Animal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "animal_id")
    private long animalId;

    @OneToOne
    @JoinColumn(name = "animal_type_id")
    private AnimalType type;
    private String name;

    @OneToOne
    @JoinColumn(name = "gender_id")
    private Gender gender;

    @Column(name = "approximate_age")
    private int approximateAge;

    @ManyToOne
    @JoinColumn(name = "kennel_id")
    private Kennel kennel;

    @Column(name = "appearance_date")
    private LocalDateTime appearanceDate;

    @Column(name = "issue_date")
    private LocalDateTime issueDate;

    @Column(name = "is_exist")
    private boolean isExist;
    private String description;

    @Column(name = "photo")
    private String photoUrl;

    @OneToOne
    @JoinColumn(name = "breed_id")
    private Breed breed;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "animal_characteristic",
            joinColumns = {@JoinColumn(name = "animal_id")},
            inverseJoinColumns = {@JoinColumn(name = "characteristic_id")}
    )
    private List<Characteristic> characteristics = new ArrayList<>();

}
