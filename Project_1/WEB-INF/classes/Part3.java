import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Part3 extends HttpServlet{
    public void doGet(HttpServletRequest request, 
                      HttpServletResponse response) 
        throws ServletException, IOException{
	}
	
    public void doPost(HttpServletRequest request, 
                       HttpServletResponse response) 
        throws ServletException, IOException{
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
		String title = "Reading Parameters";
        String email = request.getParameter("Email");
        String password = request.getParameter("Password");
		String confirmPassword = request.getParameter("Confirm Password");
		String gender = request.getParameter("Gender");
		String country = request.getParameter("Country");
        String[] hobby = request.getParameterValues("Hobby");
        String picture = request.getParameter("Picture");
		String address = request.getParameter("Address");
		
		out.println("<html>\n" +
        "<head>\n" +
        "<title>"+title+"</title></head>\n" +
        "<body bgcolor='#FDF5R6'>\n" +
        "<h1 align = 'center'>" + title +"</h1>\n" +
        "Email: "+ email+"<br/>\n" +
        "Password: "+ password +"<br/>\n" +
        "Condirm Password: "+ confirmPassword +"<br/>\n" +
        "Picutre: " +picture +"<br/>\n" +
		"Gender: "+gender + "<br/>\n" +
        "Country: "+country + "<br/>");
        
		out.println("Hobby: ");
		for(int i=0;i<hobby.length;i++){
			out.println(hobby[i] + "  ");
        }
        
        out.println("<br/>"+"Address: "+address + "<br/>" + "</body>" + "</html>");
    }
}