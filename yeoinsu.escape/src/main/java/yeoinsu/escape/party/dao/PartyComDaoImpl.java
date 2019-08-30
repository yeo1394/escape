package yeoinsu.escape.party.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yeoinsu.escape.party.dao.mapper.PartyComMapper;
import yeoinsu.escape.party.domain.PartyComment;

@Repository
public class PartyComDaoImpl implements PartyComDao {
	@Autowired PartyComMapper partyComMapper;
	
	@Override
	public List<PartyComment> getCom(int partyNo) {
		return partyComMapper.getCom(partyNo);
	}

	@Override
	public int addCom(PartyComment partyComment) {
		return partyComMapper.addCom(partyComment);
	}
	
}
