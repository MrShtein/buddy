package mr.shtein.buddy.models;

import org.hibernate.Hibernate;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Index;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Table(name = "animal_photo", indexes = {
        @Index(name = "animal_photo_url_uindex", columnList = "url", unique = true)
})

@Entity
@Getter
@Setter
@RequiredArgsConstructor
public class AnimalPhoto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "animal_photo_id", nullable = false)
    private Integer id;

    @Column(name = "url", nullable = false, length = 100)
    private String url;

    @Column(name = "is_primary", nullable = false)
    private Boolean isPrimary = false;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "animal_id")
    private Animal animal;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", length = 20)
    private PhotoStatus status;

    @Column(name = "status_change_date")
    private LocalDateTime statusChangeDate;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        AnimalPhoto that = (AnimalPhoto) o;
        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return 0;
    }
}