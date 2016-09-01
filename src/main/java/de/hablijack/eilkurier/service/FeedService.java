package de.hablijack.eilkurier.service;


import java.io.IOException;
import java.net.MalformedURLException;
import java.util.List;
import java.util.Optional;

import com.rometools.rome.io.FeedException;

import de.hablijack.eilkurier.domain.Feed;
import de.hablijack.eilkurier.form.FeedCreateForm;

public interface FeedService {

    Feed getFeedById(long id);

    Feed create(FeedCreateForm form) throws MalformedURLException, IllegalArgumentException, FeedException, IOException;

	Optional<Feed> getFeedByName(String name);
	
	List<Feed> getAllFeeds();

}
