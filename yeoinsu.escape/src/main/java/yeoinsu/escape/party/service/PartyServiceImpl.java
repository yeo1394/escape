package yeoinsu.escape.party.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yeoinsu.escape.party.dao.PartyDao;
import yeoinsu.escape.party.domain.Page;
import yeoinsu.escape.party.domain.Party;

@Service
public class PartyServiceImpl implements PartyService {
	@Autowired PartyDao partyDao;
	
	public List<Party> getParties(Page page) {
		return partyDao.getParties(page);
	}

	@Override
	public Party getPage() {
		return partyDao.getPage();
	}

	@Override
	public Party getParty(int No) {
		return partyDao.getParty(No);
	}

	@Override
	public int addParty(Party party) {
		return partyDao.addParty(party);
	}

	@Override
	public int update(Party party) {
		return partyDao.update(party);
	}

	@Override
	public int delete(int partyNo) {
		return partyDao.delete(partyNo);
	}

	@Override
	public int hitUpdate(int partyNo) {
		return partyDao.hitUpdate(partyNo);
	}
}
