package persistance;

import java.sql.SQLException;
import java.util.ArrayList;

import model.Aluno;

public class teste {
	public static void main(String[] args) {
		ListDAO ldao = new ListDAO();
		try {
			ArrayList<Aluno> alunos = ldao.carregaListRA();
			for (Aluno a : alunos) {
				System.out.println(a.getRa());
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
