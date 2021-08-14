package mr.shtein.buddy.models;

import org.hibernate.Hibernate;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Table(name = "characteristic_type")
public class CharacteristicType {
    @Id
    @GeneratedValue
    private Integer id;

    private String name;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        CharacteristicType that = (CharacteristicType) o;

        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }
}
