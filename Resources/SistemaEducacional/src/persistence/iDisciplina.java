package persistence;

import java.sql.SQLException;
import java.util.List;

import model.Disciplina;

public interface iDisciplina {
	public List<Disciplina> getDisciplinas() throws SQLException;
}
