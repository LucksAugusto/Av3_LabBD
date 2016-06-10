package testes;

import java.sql.SQLException;
import java.util.List;

import model.Aluno;
import model.Alunos;

public class Teste {
	public static void main(String[] args) throws SQLException {
//		List<Disciplina> lista = new daoDisciplinas().getDisciplinas();
//		
//		for(Disciplina d: lista) System.out.println(d.getTurno() + ": " + d.getSigla());
		
		List<Aluno> lista = new Alunos().getAlunos();
		System.out.println(lista.get(0).getNome());
	}
}
