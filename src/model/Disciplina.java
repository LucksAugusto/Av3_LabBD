package model;

public class Disciplina {

	private String codigo;
	private String nome;
	private String sigla;
	private char turno;
	private int numAulas;
	
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSigla() {
		return sigla;
	}
	public void setSigla(String sigla) {
		this.sigla = sigla;
	}
	public char getTurno() {
		return turno;
	}
	public void setTurno(char turno) {
		this.turno = turno;
	}
	public int getNumAulas() {
		return numAulas;
	}
	public void setNumAulas(int numAulas) {
		this.numAulas = numAulas;
	}
	
}
