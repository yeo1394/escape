package yeoinsu.escape.thema.service;

import java.util.List;

import yeoinsu.escape.thema.domain.Thema;

public interface ThemaService {
	List<Thema> getThemas();
	boolean updateThema(Thema thema);
	boolean deleteThema(Thema thema);
	
	Thema getThema(char themaNo);
}
