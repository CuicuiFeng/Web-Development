import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Part5 extends HttpServlet{
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
        String email = request.getParameter("email");
        String password = request.getParameter("Password");
		String confirmPassword = request.getParameter("Confirm Password");
        String picture = request.getParameter("picture");
		String gender = request.getParameter("gender");
		String country = request.getParameter("country");
		String[] hobby = request.getParameterValues("hobby");
		String address = request.getParameter("address");
        
        Map<String,String[]> map = request.getParameterMap();
        for(String para : map.keySet()){
            out.println("<p>" + para + ":");
            for(String value: map.get(para)){
                out.println(value);
            }
        }
    }
}