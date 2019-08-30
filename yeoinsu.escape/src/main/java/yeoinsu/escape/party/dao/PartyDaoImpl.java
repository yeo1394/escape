package yeoinsu.escape.party.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yeoinsu.escape.party.dao.mapper.PartyMapper;
import yeoinsu.escape.party.domain.Page;
import yeoinsu.escape.party.domain.Party;

@Repository
public class PartyDaoImpl implements PartyDao{
	@Autowired PartyMapper partyMapper;
	
	public List<Party> getParties(Page page) {
		return partyMapper.getParties(page);
	}

	@Override
	public Party getPage() {
		return partyMapper.getPage();
	}
	
	public Party getParty(int No) {
		return partyMapper.getParty(No);
	}

	@Override
	public int addParty(Party party) {
		return partyMapper.addParty(party);
	}

	@Override
	public int update(Party party) {
		return partyMapper.update(party);
	}

	@Override
	public int delete(int partyNo) {
		return partyMapper.delete(partyNo);
	}

	@Override
	public int hitUpdate(int partyNo) {
		return partyMapper.hitUpdate(partyNo);
	}
}
