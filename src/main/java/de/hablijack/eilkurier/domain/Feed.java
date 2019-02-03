package de.hablijack.eilkurier.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import lombok.Data;

@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
@Entity(name = "Feed")
@Table(name = "feed")
@Data
public class Feed {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false, updatable = false)
	private Long id;

	@Column(name = "url", nullable = false, unique = true)
	private String url;

	@Column(name = "name", nullable = false)
	private String name;

	@Column(name = "description")
	private String description;

	@Column(name = "picture")
	private String picture;

	@Column(name = "picture_content_type")
	private String pictureContentType;

	@JsonBackReference
	@ManyToMany(fetch = FetchType.LAZY, mappedBy = "feeds")
	private List<Category> categories = new ArrayList<>();

	@JsonBackReference
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "feed")
	@OrderBy("timestamp DESC")
	private List<Info> infos = new ArrayList<>();

	@JsonBackReference
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "feed")
	private List<EilkurierUserFeed> eilkurierUserFeeds;
}
