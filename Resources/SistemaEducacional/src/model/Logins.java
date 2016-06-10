package model;

public class Logins {
	private static final String USUARIO = "admin";
	private static final String SENHA = "123456";
	
	public static boolean loginValido(String login, String senha) {
		boolean logado = false;
		
		if (login.equals(USUARIO) && senha.equals(SENHA))
			logado = true;
		
		return logado;
	}
}
