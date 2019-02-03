package de.hablijack.eilkurier.service;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rometools.rome.feed.synd.SyndFeed;
import com.rometools.rome.io.FeedException;

import de.hablijack.eilkurier.domain.Category;
import de.hablijack.eilkurier.domain.Feed;
import de.hablijack.eilkurier.form.FeedCreateForm;
import de.hablijack.eilkurier.repository.CategoryRepository;
import de.hablijack.eilkurier.repository.FeedRepository;

@Service
public class FeedServiceImpl implements FeedService {

	private static final Logger LOGGER = LoggerFactory.getLogger(FeedServiceImpl.class);

	@Autowired
	private FeedRepository feedRepository;
	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	private RSSParserService rssParserService;

	@Override
	public Feed create(FeedCreateForm form) throws IllegalArgumentException, FeedException, IOException {
		SyndFeed rssFeed = rssParserService.parse(form.getUrl());

		Feed feed = new Feed();
		feed.setName(rssFeed.getTitle());
		feed.setPicture(rssFeed.getImage().getUrl());
		feed.setDescription(rssFeed.getDescription());
		feed.setUrl(form.getUrl());
		return feedRepository.save(feed);
	}

	@Override
	public Optional<Feed> getFeedById(long id) {
		LOGGER.debug("Getting feed={}", id);
		return feedRepository.findById(id);
	}

	@Override
	public Optional<Feed> getFeedByName(String name) {
		return feedRepository.findOneByName(name);
	}

	@Override
	public List<Feed> getAllFeeds() {
		return feedRepository.findAll();
	}

	@Override
	public List<Feed> getFeedsByCategoryId(long categoryId) {
		LOGGER.debug("Getting feeds for category={}", categoryId);
		Optional<Category> category = categoryRepository.findById(categoryId);		
		return category.get().getFeeds();
	}

}
