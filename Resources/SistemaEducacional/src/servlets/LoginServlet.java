package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Logins;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean logado = false;
		String btn = request.getParameter("btn");
		
		HttpSession session = request.getSession();
		
		if (!btn.equals("logar")) {
			session.setAttribute("logado", logado);
		} else {
			String usuario = request.getParameter("usuario");
			String senha = request.getParameter("senha");
			
			logado = Logins.loginValido(usuario, senha);
			
			session.setAttribute("logado", logado);
			session.setAttribute("usuario", usuario);
		}
		
		String pagina = request.getContextPath();
		
		response.sendRedirect(pagina);
	}

}
