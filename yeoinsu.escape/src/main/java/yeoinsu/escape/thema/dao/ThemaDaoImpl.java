package yeoinsu.escape.thema.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yeoinsu.escape.thema.dao.mapper.ThemaMapper;
import yeoinsu.escape.thema.domain.Thema;

@Repository
public class ThemaDaoImpl implements ThemaDao {
	@Autowired ThemaMapper themaMapper;
	
	public List<Thema> getThemas() {
		return themaMapper.getThemas();
	}

	public int updateThema() {
		return themaMapper.updateThema();
	}

	public int deleteThema() {
		return themaMapper.deleteThema();
	}

}
