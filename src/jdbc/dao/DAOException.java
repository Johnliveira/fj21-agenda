package jdbc.dao;

import java.sql.SQLException;

public class DAOException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	
	public DAOException(SQLException e) {
		super(e);
	}
	
	@Override
	public String getMessage() {
		return "Deu erro aqui";
	}
}