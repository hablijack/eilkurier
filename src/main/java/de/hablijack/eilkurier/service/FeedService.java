package de.hablijack.eilkurier.service;


import java.util.List;
import java.util.Optional;

import de.hablijack.eilkurier.domain.Feed;
import de.hablijack.eilkurier.form.FeedCreateForm;

public interface FeedService {

    Optional<Feed> getFeedById(long id);

    Feed create(FeedCreateForm form);

	Optional<Feed> getFeedByName(String name);
	
	List<Feed> getAllFeeds();

}
