package mr.shtein.buddy.models;

import org.hibernate.Hibernate;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "kennel_administrator")
@IdClass(PK.class)
public class KennelAdministrator {

    @Id
    @Column(name = "kennel_id", nullable = false)
    private Integer kennelId;

    @Id
    @Column(name = "person_id", nullable = false)
    private Long personId;

}

class PK implements Serializable {
    private Integer kennelId;
    private Long personId;

    public PK(Integer kennelId, Long personId) {
        this.kennelId = kennelId;
        this.personId = personId;
    }

    public PK() {
    }

    public Integer getKennelId() {
        return kennelId;
    }

    public void setKennelId(Integer kennelId) {
        this.kennelId = kennelId;
    }

    public Long getPersonId() {
        return personId;
    }

    public void setPersonId(Long personId) {
        this.personId = personId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PK pk = (PK) o;
        return kennelId.equals(pk.kennelId) && personId.equals(pk.personId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(kennelId, personId);
    }
}
