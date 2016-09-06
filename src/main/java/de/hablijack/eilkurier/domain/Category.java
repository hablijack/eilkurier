package de.hablijack.eilkurier.domain;

import java.util.List;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "category")
@Data
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false, updatable = false)
    private Long id;

    @Column(name = "description", nullable = false)
    private String description;

    @Column(name = "name", nullable = false, unique = true)
    private String name;

    @Lob
    @Basic(fetch = FetchType.LAZY)
    @Column(name = "picture", nullable = false, length = 100000)
    private byte[] picture;

    @Column(name = "picture_content_type")
    private String pictureContentType;

    @OneToOne()
    private EilkurierUser eilkurierUser;

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "categories")
    private List<Feed> feeds;

}
