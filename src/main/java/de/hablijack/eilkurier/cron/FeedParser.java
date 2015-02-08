package de.hablijack.eilkurier.cron;

import java.io.IOException;
import java.net.URL;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.sun.syndication.feed.synd.SyndEntryImpl;
import com.sun.syndication.feed.synd.SyndFeed;
import com.sun.syndication.io.FeedException;
import com.sun.syndication.io.SyndFeedInput;
import com.sun.syndication.io.XmlReader;

import de.hablijack.eilkurier.domain.Feed;
import de.hablijack.eilkurier.domain.Info;
import de.hablijack.eilkurier.repository.FeedRepository;
import de.hablijack.eilkurier.repository.InfoRepository;

@Component
@EnableScheduling
public class FeedParser {

	private static final Logger LOGGER = LoggerFactory.getLogger(FeedParser.class);

	@Autowired
	FeedRepository feedRepository = null;

	@Autowired
	InfoRepository infoRepository = null;
	
	@Scheduled(fixedRate = 50000)
	public void fetchInfos() throws IllegalArgumentException, FeedException, IOException {
		LOGGER.debug("=====> Beginning Fetch Process");
		List<Feed> allFeeds = feedRepository.findAll();
		for (Feed feed : allFeeds) {
			fetchInfosForFeed(feed);
		}
		LOGGER.debug("=====> Ending Fetch Process");
	}

	private void fetchInfosForFeed(Feed feed) throws IllegalArgumentException, FeedException, IOException {
		LOGGER.debug("==========> Start to Fetch for: " + feed.getName());
		URL feedUrl = new URL(feed.getUrl());

		SyndFeedInput input = new SyndFeedInput();
		SyndFeed xml = input.build(new XmlReader(feedUrl));
		for (Object entry : xml.getEntries()) {
			LOGGER.debug("==========> Fetching Info");
			SyndEntryImpl currentEntry = (SyndEntryImpl) entry;
			Info info = new Info();
			info.setFeed(feed);
			info.setAuthor(currentEntry.getAuthor());
			info.setMessage(currentEntry.getDescription().getValue());
			info.setTitle(currentEntry.getTitleEx().getValue());
			info.setTimestamp(currentEntry.getPublishedDate());
			LOGGER.debug("==========> Saving Info: " + info.getTitle());
			infoRepository.save(info);
		}
		LOGGER.debug("==========> End Fetch for: " + feed.getName());
	}
}
