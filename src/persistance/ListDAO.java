package persistance;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Aluno;

public class ListDAO {

	public ArrayList<Aluno> carregaListRA() throws Exception {
		ArrayList<Aluno> RAList = new ArrayList<Aluno>();
		String SQL = "SELECT * FROM aluno";
		Connection con = DBConnection.getInstance().getConnection();
		PreparedStatement stmt = con.prepareStatement(SQL);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			Aluno aluno = new Aluno();
			aluno.setRa(rs.getInt(1));
			aluno.setNome(rs.getString(2));
			RAList.add(aluno);
		}
		stmt.close();
		rs.close();
		return RAList;
	}
}
