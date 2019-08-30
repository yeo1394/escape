package yeoinsu.escape.party.dao;

import java.util.List;

import yeoinsu.escape.party.domain.PartyComment;

public interface PartyComDao {
	List<PartyComment> getCom(int partyNo);
	int addCom(PartyComment partyComment);
}
