package de.hablijack.eilkurier.service;

import java.io.IOException;
import java.net.URL;
import org.springframework.stereotype.Service;
import com.rometools.rome.feed.synd.SyndFeed;
import com.rometools.rome.io.FeedException;
import com.rometools.rome.io.SyndFeedInput;
import com.rometools.rome.io.XmlReader;

@Service
public class RSSParserServiceImpl implements RSSParserService {

	@Override
	public SyndFeed parse(String url) throws IllegalArgumentException, FeedException, IOException {
		URL feedUrl = new URL(url);
		SyndFeedInput input = new SyndFeedInput();
		return input.build(new XmlReader(feedUrl));
	}

}
