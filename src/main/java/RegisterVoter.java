

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;


public class RegisterVoter extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		DbManager db = new DbManager();
		java.sql.Connection con = db.getConnection();
		
		String name = request.getParameter("user_name");
		String number = request.getParameter("phone_number");
		String email = request.getParameter("mail");
		String voterId = request.getParameter("VoterID");
		String dob = request.getParameter("DOB");
		String address = request.getParameter("address");
		
try {
			
			PreparedStatement st = con.prepareStatement("insert into voter(name,number,email,voterId,dob,address)values('"+name+"','"+number+"','"+email+"','"+voterId+"','"+dob+"','"+address+"')");
			st.executeUpdate();	
			response.sendRedirect("welcomeAdmin.jsp");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
