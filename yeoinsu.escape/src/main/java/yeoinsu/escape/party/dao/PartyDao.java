package yeoinsu.escape.party.dao;

import java.util.List;

import yeoinsu.escape.party.domain.Page;
import yeoinsu.escape.party.domain.Party;

public interface PartyDao {
	List<Party> getParties(Page page);
	Party getPage();
	Party getParty(int No);
	int addParty(Party party);
	int update(Party party);
	int delete(int partyNo);
	int hitUpdate(int partyNo);
}
