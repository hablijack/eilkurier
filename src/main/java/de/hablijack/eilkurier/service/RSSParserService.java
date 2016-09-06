package de.hablijack.eilkurier.service;

import java.io.IOException;

import com.rometools.rome.feed.synd.SyndFeed;
import com.rometools.rome.io.FeedException;

interface RSSParserService {

	SyndFeed parse(String url) throws IllegalArgumentException, FeedException, IOException;

}
