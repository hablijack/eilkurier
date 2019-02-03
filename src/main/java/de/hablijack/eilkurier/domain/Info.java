package de.hablijack.eilkurier.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Index;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import lombok.Data;

@Entity(name = "Info")
@Table(name = "info", indexes = { @Index(columnList = "id", name = "info_id_hidx"),
		@Index(columnList = "timestamp", name = "info_timestamp_hidx") })
@Data
public class Info {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false, updatable = false)
	private Long id;

	@Column(name = "timestamp", nullable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date timestamp;

	@Column(name = "title", nullable = false)
	private String title;

	@Column(name = "author", nullable = false)
	private String author;

	@Column(name = "link", nullable = false)
	private String link;

	@Column(name = "picture", columnDefinition = "CLOB", nullable = true)
	private String picture;

	@Lob
	@Column(name = "message", columnDefinition = "CLOB", nullable = false)
	private String message;
	
	@Lob
	@Column(name = "textonlymessage", columnDefinition = "CLOB", nullable = false)
	private String textonlymessage;

	@Transient
	private int weight = 0;

	@ManyToOne(fetch = FetchType.LAZY)
	private Feed feed;

}
