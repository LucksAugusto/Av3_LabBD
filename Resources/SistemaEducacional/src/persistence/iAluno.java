package persistence;

import java.sql.SQLException;
import java.util.List;

import model.Aluno;

public interface iAluno {
	public List<Aluno> getAlunos() throws SQLException;
}
