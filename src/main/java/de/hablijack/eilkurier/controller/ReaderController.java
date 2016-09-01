package de.hablijack.eilkurier.controller;

import java.net.URL;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rometools.rome.feed.synd.SyndEntryImpl;
import com.rometools.rome.feed.synd.SyndFeed;
import com.rometools.rome.io.SyndFeedInput;
import com.rometools.rome.io.XmlReader;

@Controller
public class ReaderController {
 
	@RequestMapping("/rss.html")
	public void read() {
		boolean ok = false;
        try {
            URL feedUrl = new URL( "http://rss.golem.de/rss.php?feed=RSS2.0" );
        	 //URL feedUrl = new URL( "http://rss.bild.de/bild.xml" );
        	
            SyndFeedInput input = new SyndFeedInput();
            SyndFeed feed = input.build(new XmlReader(feedUrl));
            
            for (Object entry : feed.getEntries()) {
            	SyndEntryImpl currentEntry = (SyndEntryImpl) entry;
            	System.out.println("------------------------");
            	System.out.println(currentEntry.getPublishedDate());
            	System.out.println(currentEntry.getTitleEx().getValue());
            	System.out.println(currentEntry.getAuthor());
            	System.out.println(currentEntry.getDescription().getValue());
            	System.out.println("------------------------");
			}

            ok = true;
        }
        catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("ERROR: "+ex.getMessage());
        }

        if (!ok) {
            System.out.println();
            System.out.println("FeedReader reads and prints any RSS/Atom feed type.");
            System.out.println("The first parameter must be the URL of the feed to read.");
            System.out.println();
        }
    }
}
