package de.hablijack.eilkurier.service;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import com.rometools.rome.io.FeedException;

import de.hablijack.eilkurier.domain.Feed;
import de.hablijack.eilkurier.form.FeedCreateForm;

public interface FeedService {

	Optional<Feed> getFeedById(long id);

	List<Feed> getFeedsByCategoryId(long categoryId);

	Feed create(FeedCreateForm form) throws IllegalArgumentException, FeedException, IOException;

	Optional<Feed> getFeedByName(String name);

	List<Feed> getAllFeeds();

}
