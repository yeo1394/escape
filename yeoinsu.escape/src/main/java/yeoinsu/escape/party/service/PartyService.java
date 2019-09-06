package yeoinsu.escape.party.service;

import java.util.List;

import yeoinsu.escape.party.domain.ParPage;
import yeoinsu.escape.party.domain.Party;

public interface PartyService {
	List<Party> getParties(ParPage page);
	Party getPage();
	Party getParty(int No);
	int addParty(Party party);
	int update(Party party);
	int delete(int partyNo);
	int hitUpdate(int partyNo);
}
