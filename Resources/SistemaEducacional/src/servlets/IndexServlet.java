package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Disciplina;
import utils.StrUtils;

@WebServlet("/index")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public IndexServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String button = (String) request.getParameter("btn");
		String nextPage = StrUtils.concat("/", button, ".jsp");
		
		Disciplina disciplina = new Disciplina();
		
		String codigo = (String) request.getParameter("codigo");
		String nome = (String) request.getParameter("nome");
		String sigla = (String) request.getParameter("sigla");
		String turno = (String) request.getParameter("turno");
		String num_aulas = (String) request.getParameter("num_aulas");
		
		disciplina.setCodigo(codigo);
		disciplina.setNome(nome);
		disciplina.setSigla(sigla);
		disciplina.setTurno(turno.charAt(0));
		disciplina.setNum_aulas(Integer.parseInt(num_aulas));
		
		request.setAttribute("disciplina", disciplina);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
	}

}
