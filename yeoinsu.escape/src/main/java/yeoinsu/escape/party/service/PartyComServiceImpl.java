package yeoinsu.escape.party.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yeoinsu.escape.party.dao.PartyComDao;
import yeoinsu.escape.party.domain.PartyComment;

@Service
public class PartyComServiceImpl implements PartyComService {
	@Autowired PartyComDao partyComDao;

	@Override
	public List<PartyComment> getCom(int partyNo) {
		return partyComDao.getCom(partyNo);
	}

	@Override
	public int addCom(PartyComment partyComment) {
		return partyComDao.addCom(partyComment);
	}
	
	
}
