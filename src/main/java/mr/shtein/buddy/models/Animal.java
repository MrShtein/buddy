package mr.shtein.buddy.models;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "animal")
public class Animal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "animal_id")
    private long id;

    @OneToOne
    @JoinColumn(name = "animal_type_id")
    private AnimalType type;
    private String name;

    @OneToOne
    @JoinColumn(name = "gender_id")
    private Gender gender;

    //animal age in months
    @Column(name = "approximate_age")
    private int approximateAge;

    @ManyToOne
    @JoinColumn(name = "kennel_id")
    private Kennel kennel;

    @Column(name = "created_at")
    private LocalDateTime appearanceDate;

    @Column(name = "updated_at")
    private LocalDateTime disappearanceDate;

    @Enumerated(EnumType.STRING)
    @Column(name = "status")
    private AnimalStatus status;

    @Column(columnDefinition="TEXT")
    private String description;

    @OneToOne
    @JoinColumn(name = "breed_id")
    private Breed breed;

    @ManyToOne
    @JoinColumn(name = "person_id")
    private Person person;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "animal_characteristic",
            joinColumns = {@JoinColumn(name = "animal_id")},
            inverseJoinColumns = {@JoinColumn(name = "characteristic_id")}
    )
    private List<Characteristic> characteristics = new ArrayList<>();

    @OneToMany(mappedBy = "animal", cascade = CascadeType.ALL)
    private List<AnimalPhoto> animalPhotos = new ArrayList<>();

    public void setDescription(String description) {
        this.description = description;
    }
}
