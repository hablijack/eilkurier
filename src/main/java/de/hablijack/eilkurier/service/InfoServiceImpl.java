package de.hablijack.eilkurier.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import de.hablijack.eilkurier.domain.EilkurierUser;
import de.hablijack.eilkurier.domain.Feed;
import de.hablijack.eilkurier.domain.Info;
import de.hablijack.eilkurier.repository.InfoRepository;

@Service
public class InfoServiceImpl implements InfoService {

	private static final int MAX_INFOS_PER_ISSUE = 40;

	@Autowired
	private InfoRepository infoRepository;
	@Autowired
	private UserService userService;

	@Override
	public List<Info> getAllInfos() {
		return infoRepository.findAll();
	}

	@Override
	public List<Info> investigateInfosForUser(EilkurierUser user) {
		List<Info> eilkurierIssues = new ArrayList<>();
		List<Info> eilkurierIssueHeadlines = new ArrayList<>();
		List<Feed> sortedFeeds = userService.getSortedFeeds(user);
		int feedCount = sortedFeeds.size();
		if (feedCount > 0) {
			final int INFO_AMOUNT_FACTOR = (MAX_INFOS_PER_ISSUE / feedCount);
			int loopindex = 0;
			for (Feed feed : sortedFeeds) {
				List<Info> feedList = new ArrayList<>();
				int CALCULATED_AMOUNT_FACTOR = INFO_AMOUNT_FACTOR - loopindex;
				List<Info> infos = feed.getInfos();
				if (CALCULATED_AMOUNT_FACTOR > infos.size()) {
					feedList.addAll(infos);
				} else {
					feedList.addAll(infos.subList(0, CALCULATED_AMOUNT_FACTOR - 1));
				}
				for (Info info : feedList) {
					info.setWeight(sortedFeeds.size() - loopindex);
				}
				Info firstInfoOfFeed = feedList.get(0);
				firstInfoOfFeed.setWeight(sortedFeeds.size() + 1);
				eilkurierIssueHeadlines.add(firstInfoOfFeed);
				eilkurierIssues.addAll(feedList);
				eilkurierIssues.remove(feedList.get(0));
				loopindex++;
			}
			eilkurierIssues.addAll(0, eilkurierIssueHeadlines);
		}
		return eilkurierIssues;
	}
}
