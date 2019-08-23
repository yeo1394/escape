package yeoinsu.escape.thema.dao.mapper;

import java.util.List;

import yeoinsu.escape.thema.domain.Thema;

public interface ThemaMapper {
	List<Thema> getThemas();
	int updateThema();
	int deleteThema();
}
