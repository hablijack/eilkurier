package de.hablijack.eilkurier.service;

import java.util.List;

import de.hablijack.eilkurier.domain.EilkurierUser;
import de.hablijack.eilkurier.domain.Info;

public interface InfoService {

	List<Info> getAllInfos();

	List<Info> investigateInfosForUser(EilkurierUser user);

}
