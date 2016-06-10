package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Aluno;

public class daoAluno implements iAluno{
	
	private ConexaoDB conexaoDB;
	private Connection con;
	private List<Aluno> alunos;
	private Aluno aluno;
	
	public daoAluno() {
		conexaoDB = new ConexaoDB();
		con = conexaoDB.getConnection();
	}

	public List<Aluno> getAlunos() throws SQLException {
		alunos = new ArrayList<>();
		
		String sql = "SELECT * FROM aluno";
		PreparedStatement ps = con.prepareStatement(sql); 
		ResultSet rs = ps.executeQuery();
		
		while( rs.next() ) {
			aluno = new Aluno();
			
			aluno.setRa(rs.getString(1));
			aluno.setNome(rs.getString(2));
			
			alunos.add(aluno);
		}
		
		return alunos;
	}

}
