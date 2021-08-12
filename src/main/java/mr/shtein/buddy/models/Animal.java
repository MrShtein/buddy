package mr.shtein.buddy.models;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
    private long id;
    private int type;
    private String name;

    @JoinColumn(name = "gender", foreignKey = @ForeignKey(name = "animal_gender_gender_id_fk"))
    private String gender;

    @Column(name = "approximate_age")
    private int approximateAge;

    @ManyToOne
    @JoinColumn(name = "kennel", foreignKey = @ForeignKey(name = "animal_kennel_id_fk"))
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




}
