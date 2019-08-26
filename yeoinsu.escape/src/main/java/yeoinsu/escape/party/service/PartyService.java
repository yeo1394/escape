package yeoinsu.escape.party.service;

import java.util.List;

import yeoinsu.escape.party.domain.Page;
import yeoinsu.escape.party.domain.Party;

public interface PartyService {
	List<Party> getParties(Page page);
	Party getPage();
}
