package de.hablijack.eilkurier.service;

import java.io.IOException;
import java.net.MalformedURLException;

import com.rometools.rome.feed.synd.SyndFeed;
import com.rometools.rome.io.FeedException;

public interface RSSParserService {

	SyndFeed parse(String url) throws MalformedURLException, IllegalArgumentException, FeedException, IOException;

}
