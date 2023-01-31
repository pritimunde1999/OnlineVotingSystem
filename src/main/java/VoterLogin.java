

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class VoterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DbManager db = new DbManager();
		java.sql.Connection con = db.getConnection();
		
		String vNumber = request.getParameter("voter number");
		
		try {
			
			PreparedStatement st1 = con.prepareStatement("select vnumber from temp_voternumber where vnumber = '"+vNumber+"'");
	        
			ResultSet rs1= st1.executeQuery("select vnumber from temp_voternumber where vnumber = '"+vNumber+"'");
			if(rs1.next()) {
				response.sendRedirect("voted.jsp");
			}else {
				
				PreparedStatement st2  = con.prepareStatement("select * from voter where voterId = '"+vNumber+"'");
				ResultSet rs2 = ((java.sql.Statement) st2).executeQuery("select * from voter where voterId  = '"+vNumber+"'");
				
				if(rs2.next()) {
					response.sendRedirect("welcomeVoter.jsp");
				}else {
					response.sendRedirect("invalid.jsp");
				}
				
				//response.sendRedirect("welcomeVoter.jsp");
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		}
	}


