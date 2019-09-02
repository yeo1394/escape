package yeoinsu.escape.thema.dao.mapper;

import java.util.List;

import yeoinsu.escape.thema.domain.Thema;

public interface ThemaMapper {
	List<Thema> getThemas();
	int updateThema(Thema thema);
	int deleteThema(Thema thema);
	
	Thema getThema(char themaNo);
}
