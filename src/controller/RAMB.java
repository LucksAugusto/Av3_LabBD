package controller;

import java.util.ArrayList;

import javax.faces.bean.ManagedBean;

import model.Aluno;
import persistance.ListDAO;

@ManagedBean
public class RAMB {

	private ArrayList<Aluno> raList = new ArrayList<Aluno>();

	public RAMB() {
		ListDAO daoRA = new ListDAO();
		try {
			setRaList(daoRA.carregaListRA());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Aluno> getRaList() {
		return raList;
	}

	public void setRaList(ArrayList<Aluno> raList) {
		this.raList = raList;
	}
	
	
}
