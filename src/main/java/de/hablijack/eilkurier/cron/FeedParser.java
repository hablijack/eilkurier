package de.hablijack.eilkurier.cron;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import com.rometools.rome.feed.synd.SyndEntryImpl;
import com.rometools.rome.feed.synd.SyndFeed;
import com.rometools.rome.io.FeedException;
import com.rometools.rome.io.SyndFeedInput;
import com.rometools.rome.io.XmlReader;

import de.hablijack.eilkurier.domain.Feed;
import de.hablijack.eilkurier.domain.Info;
import de.hablijack.eilkurier.repository.FeedRepository;
import de.hablijack.eilkurier.repository.InfoRepository;

@Configuration
@EnableScheduling
public class 	FeedParser {

	private static final Logger LOGGER = LoggerFactory.getLogger(FeedParser.class);
	@Autowired
	private final FeedRepository feedRepository = null;
	@Autowired
	private final InfoRepository infoRepository = null;

	// Every 10 Minutes (600000ms)
	@Scheduled(fixedDelay = 600000)
	public void fetchInfos() throws IllegalArgumentException, FeedException, IOException {
		//LOGGER.info("=> Beginning Fetch Process");
		List<Feed> allFeeds = feedRepository.findAll();
		for (Feed feed : allFeeds) {
			try {
				fetchInfosForFeed(feed);
			} catch (Exception e) {
				LOGGER.error("Fehler beim Parsen von: " + feed.getName() + " \r\n" + e.getMessage());
			}
		}
		//LOGGER.info("=> Ending Fetch Process");
		System.out.println(infoRepository.findAll().size());
	}

	private boolean hasContent(SyndEntryImpl entry) {
		return (entry.getContents().size() > 0 && entry.getContents().iterator().next().getValue().trim().length() > 0);
	}

	/*
	 * private String stripNonValidXMLCharacters(String in) { StringBuffer out = new
	 * StringBuffer(); // Used to hold the output. char current; // Used to
	 * reference the current character.
	 * 
	 * if (in == null || ("".equals(in))) return ""; // vacancy test. for (int i =
	 * 0; i < in.length(); i++) { current = in.charAt(i); // NOTE: No
	 * IndexOutOfBoundsException caught here; it should not happen. if ((current ==
	 * 0x9) || (current == 0xA) || (current == 0xD) || ((current >= 0x20) &&
	 * (current <= 0xD7FF)) || ((current >= 0xE000) && (current <= 0xFFFD)) ||
	 * ((current >= 0x10000) && (current <= 0x10FFFF))) out.append(current); }
	 * return out.toString(); }
	 */
	/*
	 * private InputStream tidyXMLStream(InputStream stream) throws IOException {
	 * BufferedReader br = new BufferedReader(new InputStreamReader(stream));
	 * StringBuilder sb = new StringBuilder(); String line; while ((line =
	 * br.readLine()) != null) { sb.append(stripNonValidXMLCharacters(line)); }
	 * return new ByteArrayInputStream(sb.toString().getBytes()); }
	 */
	private String truncateMessageBody(String input, int size) {
		if (input.length() < size)
			return input;

		int lastTagStart = 0;
		boolean inString = false;
		boolean inTag = false;

		for (int pos = 0; pos < size; pos++) {
			switch (input.charAt(pos)) {
			case '<':
				if (!inString && !inTag) {
					lastTagStart = pos;
					inTag = true;
				}
				break;
			case '>':
				if (!inString)
					inTag = false;
				break;
			case '\"':
				if (inTag)
					inString = !inString;
				break;
			}
		}
		if (!inTag)
			lastTagStart = size;
		return input.substring(0, lastTagStart);
	}

	@Async
	private void fetchInfosForFeed(Feed feed) throws IllegalArgumentException, FeedException, IOException {
		//LOGGER.debug("==> Reading Feed: " + feed.getName());

		CloseableHttpClient client = HttpClients.createMinimal();
		HttpUriRequest request = new HttpGet(feed.getUrl());
		CloseableHttpResponse response = client.execute(request);
		// InputStream stream = tidyXMLStream(response.getEntity().getContent());
		if(response.getStatusLine().getStatusCode() >= 400 && response.getStatusLine().getStatusCode() <= 599) {
			return;
		}
		InputStream stream = response.getEntity().getContent();

		SyndFeedInput input = new SyndFeedInput();
		input.setAllowDoctypes(true);
		SyndFeed xml = input.build(new XmlReader(stream));
		client.close();

		for (Object entry : xml.getEntries()) {
			SyndEntryImpl currentEntry = (SyndEntryImpl) entry;
			if (!infoRepository.existsByTitleAndFeed(currentEntry.getTitleEx().getValue(), feed)) {
				//LOGGER.info("===> Fetching Info");
				Info info = new Info();

				info.setFeed(feed);
				if (currentEntry.getAuthor().isEmpty()) {
					info.setAuthor(feed.getName());
				} else {
					info.setAuthor(currentEntry.getAuthor());
				}
				String message = "";
				if (hasContent(currentEntry)) {
					message = currentEntry.getContents().iterator().next().getValue();
					message = Jsoup.clean(message, Whitelist.basicWithImages());
					message = message.replaceAll("<img src=\\\"https://cpx.golem.de/cpx\\.php.*>", "");
				} else {
					message = currentEntry.getDescription().getValue();
					message = Jsoup.clean(message, Whitelist.basicWithImages());
				}
				if (message.length() > 1200) {
					message = truncateMessageBody(message, 1195) + " (... weiterlesen ...)";
				}
				info.setMessage(message);

				Pattern regexImagePattern = Pattern.compile("src=\"(.*?)\"");
				Matcher imageMatcher = regexImagePattern.matcher(message);
				if (imageMatcher.find()) {
					if (imageMatcher.group(1).contains("http")) {
						info.setPicture(imageMatcher.group(1));
					}
				}
				info.setTextonlymessage(Jsoup.clean(message, Whitelist.basic()));

				info.setTitle(currentEntry.getTitleEx().getValue());
				info.setTimestamp(currentEntry.getPublishedDate());
				if (currentEntry.getLink() == null || currentEntry.getLink().length() <= 0) {
					info.setLink(currentEntry.getUri());
				} else {
					info.setLink(currentEntry.getLink());
				}
				//LOGGER.info("===> Saving Info...");
				infoRepository.save(info);
			} else {
				LOGGER.info("===> Message already exists");
			}
		}
		//LOGGER.info("==> End Reading Feed");
	}
}
