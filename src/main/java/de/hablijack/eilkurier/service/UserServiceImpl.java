package de.hablijack.eilkurier.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import de.hablijack.eilkurier.domain.EilkurierUser;
import de.hablijack.eilkurier.domain.EilkurierUserFeed;
import de.hablijack.eilkurier.domain.Feed;
import de.hablijack.eilkurier.form.UserCreateForm;
import de.hablijack.eilkurier.repository.EilkurierUserFeedRepository;
import de.hablijack.eilkurier.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);
	private final UserRepository userRepository;
	private final EilkurierUserFeedRepository userFeedRepository;

	@Autowired
	private UserServiceImpl(UserRepository userRepository, EilkurierUserFeedRepository userFeedRepository) {
		this.userRepository = userRepository;
		this.userFeedRepository = userFeedRepository;
	}

	@Override
	public Optional<EilkurierUser> getUserById(long id) {
		LOGGER.debug("Getting user={}", id);
		return userRepository.findById(id);
	}

	@Override
	public Optional<EilkurierUser> getUserByEmail(String email) {
		LOGGER.debug("Getting user by email={}", email.replaceFirst("@.*", "@***"));
		return userRepository.findOneByEmail(email);
	}

	@Override
	public EilkurierUser create(UserCreateForm form) {
		EilkurierUser user = new EilkurierUser();
		user.setEmail(form.getEmail());
		user.setPasswordHash(new BCryptPasswordEncoder().encode(form.getPassword()));
		user.setRole(form.getRole());
		return userRepository.save(user);
	}

	@Override
	public EilkurierUserFeed storePersonalizedFeed(Long userId, Feed feed, int sortindex) {
		EilkurierUserFeed userFeed = new EilkurierUserFeed();
		Optional<EilkurierUser> user = userRepository.findById(userId);
		userFeed.setEilkurierUser(user.get());
		userFeed.setFeed(feed);
		userFeed.setSortindex(sortindex);
		return userFeedRepository.save(userFeed);
	}

	@Override
	public List<Feed> getSortedFeeds(EilkurierUser user) {
		List<Feed> feeds = new ArrayList<>();
		List<EilkurierUserFeed> userFeeds = userFeedRepository.findAllByEilkurierUserOrderBySortindex(user);
		for (EilkurierUserFeed userFeed : userFeeds) {
			feeds.add(userFeed.getFeed());
		}
		return feeds;
	}
}
