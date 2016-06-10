package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Disciplina;

public class daoDisciplinas implements iDisciplina{
	
	private ConexaoDB conexaoDB;
	private Connection con;
	private List<Disciplina> disciplinas;
	private Disciplina disciplina;
	
	public daoDisciplinas() {
		conexaoDB = new ConexaoDB();
		con = conexaoDB.getConnection();
	}
	
	public List<Disciplina> getDisciplinas() throws SQLException {
		disciplinas = new ArrayList<>();
		
		String sql = "SELECT * FROM disciplina";
		PreparedStatement ps = con.prepareStatement(sql); 
		ResultSet rs = ps.executeQuery();
		
		while( rs.next() ) {
			disciplina = new Disciplina();
			
			disciplina.setCodigo(rs.getString(1));
			disciplina.setNome(rs.getString(2));
			disciplina.setSigla(rs.getString(3));
			disciplina.setTurno(rs.getString(4).charAt(0));
			disciplina.setNum_aulas(rs.getInt(5));
			
			disciplinas.add(disciplina);
		}
		
		return disciplinas;
	}
}
