package yeoinsu.escape.thema.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yeoinsu.escape.thema.dao.ThemaDao;
import yeoinsu.escape.thema.domain.Thema;

@Service
public class ThemaServiceImpl implements ThemaService {
	@Autowired ThemaDao themaDao;
	
	public List<Thema> getThemas() {
		return themaDao.getThemas();
	}

	public int updateThema() {
		return themaDao.updateThema();
	}

	public int deleteThema() {
		return themaDao.deleteThema();
	}

}
