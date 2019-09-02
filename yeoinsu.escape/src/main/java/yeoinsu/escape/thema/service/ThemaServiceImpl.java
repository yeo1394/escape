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

	public boolean updateThema(Thema thema) {
		return themaDao.updateThema(thema) > 0;
	}

	public boolean deleteThema(Thema thema) {
		System.out.println("ThemaServiceImpl");
		return themaDao.deleteThema(thema) > 0;
	}
	
	public Thema getThema(char themaNo){
		return themaDao.getThema(themaNo);
	}

}
