package yeoinsu.escape.party.dao.mapper;

import java.util.List;

import yeoinsu.escape.party.domain.PartyComment;

public interface PartyComMapper {
	List<PartyComment> getCom(int partyNo);
	int addCom(PartyComment partyComment);
}
