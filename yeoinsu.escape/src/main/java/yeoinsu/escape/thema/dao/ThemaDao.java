package yeoinsu.escape.thema.dao;

import java.util.List;

import yeoinsu.escape.thema.domain.Thema;

public interface ThemaDao {
	List<Thema> getThemas();
	int updateThema();
	int deleteThema();
}
