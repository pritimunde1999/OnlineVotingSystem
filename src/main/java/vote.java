

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class vote extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DbManager db = new DbManager();
		java.sql.Connection con = db.getConnection();
		
		String voterid = request.getParameter("voter number");
		String party = request.getParameter("party");
		
		
		
		try {
			PreparedStatement st3 = con.prepareStatement("insert into temp_voternumber(vnumber)values('"+voterid+"')");
			PreparedStatement st4 = con.prepareStatement("insert into vote(vnumber,partie)values('"+voterid+"','"+party+"')");
			
			st3.executeUpdate();
			st4.executeUpdate();
			
			response.sendRedirect("index.jsp");		
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}

}
