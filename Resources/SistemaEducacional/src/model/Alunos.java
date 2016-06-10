package model;

import java.sql.SQLException;
import java.util.List;

import persistence.daoAluno;

public class Alunos {
	public List<Aluno> alunos;
	
	public List<Aluno> getAlunos() throws SQLException {
		if(alunos == null)
			alunos = new daoAluno().getAlunos();
		
		return alunos;
	}
	
	public void setAlunos(List<Aluno> alunos) {
		this.alunos = alunos;
	}
}
