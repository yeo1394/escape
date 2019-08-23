package yeoinsu.escape.party.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yeoinsu.escape.party.dao.PartyDao;
import yeoinsu.escape.party.domain.Party;

@Service
public class PartyServiceImpl implements PartyService {
	@Autowired PartyDao partyDao;
	
	public List<Party> getParties() {
		return partyDao.getParties();
	}
}
