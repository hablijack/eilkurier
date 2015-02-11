package de.hablijack.eilkurier.service;


import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import de.hablijack.eilkurier.domain.Feed;
import de.hablijack.eilkurier.form.FeedCreateForm;
import de.hablijack.eilkurier.repository.FeedRepository;

@Service
public class FeedServiceImpl implements FeedService {

    private static final Logger LOGGER = LoggerFactory.getLogger(FeedServiceImpl.class);
    
    @Autowired
    private FeedRepository feedRepository;

    @Override
    public Feed create(FeedCreateForm form) {
        Feed feed = new Feed();
        feed.setName(form.getName());
        feed.setPicture(form.getPicture());
        feed.setDescription(form.getDescription());
        feed.setUrl(form.getUrl());
        return feedRepository.save(feed);
    }

	@Override
	public Feed getFeedById(long id) {
		 LOGGER.debug("Getting user={}", id);
	     return feedRepository.findOne(id);
	}

	@Override
	public Optional<Feed> getFeedByName(String name) {
		return feedRepository.findOneByName(name);
	}

	@Override
	public List<Feed> getAllFeeds() {
		return feedRepository.findAll();
	}

}
