package model;

import java.sql.SQLException;
import java.util.List;

import persistence.daoDisciplinas;

public class Disciplinas {
	private List<Disciplina> disciplinas;
	
	public List<Disciplina> getDisciplinas() throws SQLException {
		if (disciplinas == null)
			disciplinas = new daoDisciplinas().getDisciplinas();
		
		return disciplinas;
	}

	public void setDisciplinas(List<Disciplina> disciplinas) {
		this.disciplinas = disciplinas;
	}
}
