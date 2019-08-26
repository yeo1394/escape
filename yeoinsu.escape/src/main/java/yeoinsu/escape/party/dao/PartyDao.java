package yeoinsu.escape.party.dao;

import java.util.List;

import yeoinsu.escape.party.domain.Page;
import yeoinsu.escape.party.domain.Party;

public interface PartyDao {
	List<Party> getParties(Page page);
	Party getPage();
}
