/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Assignment;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
/**
 *
 * @author fengcu
 */
public class movieController extends HttpServlet{
    protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response)
            throws ServletException, IOException {
        String movieTitle = request.getParameter("Movie Title");
        String leadActor = request.getParameter("Lead Actor");
        String leadActress = request.getParameter("Lead Actress");
        String genre = request.getParameter("Genre");
        String year = request.getParameter("Year");
        
        movieDAO movieDAO = new movieDAO();
        int result = movieDAO.addMovie(movieTitle, leadActor, leadActress, genre, Integer.parseInt(year));
        
        request.setAttribute("result", String.valueOf(result));
        request.getRequestDispatcher("part7/part7_addReply.jsp").forward(request, response);
    }
    
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response)
            throws ServletException, IOException {
        String keyword = request.getParameter("keyword");
        String search = request.getParameter("search");
        
        movieDAO movieDAO = new movieDAO();
        List<Movie> result = movieDAO.getMovies(search, keyword);
        
        request.setAttribute("keyword", keyword);
        request.setAttribute("result", result);
        request.getRequestDispatcher("part7/part7_searchReply.jsp").forward(request, response);
    }
    
    
    
}
