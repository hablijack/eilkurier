package de.hablijack.eilkurier.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Entity(name="EilkurierUser")
@Table(name = "eilkurier_user")
@Data
public class EilkurierUser {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false, updatable = false)
	private Long id;

	@Column(name = "email", nullable = false, unique = true)
	private String email;

	@Column(name = "password_hash", nullable = false)
	private String passwordHash;
	
	@Column(name = "wizzard_run_flag")
	private boolean wizzardRunFlag = false;

	@Column(name = "role", nullable = false)
	@Enumerated(EnumType.STRING)
	private Role role;

	@OneToMany(mappedBy = "eilkurierUser")
	private List<EilkurierUserFeed> eilkurierUserFeeds = new ArrayList<EilkurierUserFeed>();
	
	@OneToMany
	private List<Category> categories;
}
