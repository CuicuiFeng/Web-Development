import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Part4 extends HttpServlet{
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
        
        Enumeration<String> paras = request.getParameterNames();
        while(paras.hasMoreElements()){
            String para = (String)paras.nextElement();
            String[] values = request.getParameterValues(para);
            if(para.equals("submit")){
                continue;
            }
            out.println("<p>" + para + ":");
            for(String value : values){
                out.println(value + "");
            }
            out.println("</p>");
        }
    }
}