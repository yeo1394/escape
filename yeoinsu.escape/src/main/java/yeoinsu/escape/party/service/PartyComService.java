package yeoinsu.escape.party.service;

import java.util.List;

import yeoinsu.escape.party.domain.PartyComment;

public interface PartyComService {
	List<PartyComment> getCom(int partyNo);
	int addCom(PartyComment partyComment);
}
