/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import javax.servlet.http.*;
import DAO.*;
import POJO.movie;
import org.springframework.web.servlet.*;
import org.springframework.web.servlet.mvc.*;
import java.util.List;

/**
 *
 * @author fengcu
 */
public class movieController extends AbstractController {
    public movieController() {

    }
    
    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        ModelAndView mv = null;
        String page = request.getParameter("page") == null ? "" : request.getParameter("page");
        movieDAO movieDAO = new movieDAO();
        
        switch (page) {
            case "home":
                String option = request.getParameter("operation");
                if (option.equals("addMovie")) {
                    mv = new ModelAndView("add");
                } else if (option.equals("browseMovies")) {
                    mv = new ModelAndView("search");
                }
                break;
                
            case "add":
                String movieTitle = request.getParameter("Movie Title");
                String leadActor = request.getParameter("Lead Actor");
                String leadActress = request.getParameter("Lead Actress");
                String genre = request.getParameter("Genre");
                String year = request.getParameter("Year");
                int result = 0;
                try {
                    result = movieDAO.addMovie(movieTitle, leadActor, leadActress, genre, Integer.parseInt(year));
                } catch (Exception e) {
                    result = 0;
                } finally {
                    mv = new ModelAndView("addReply");
                    mv.addObject("result", result);
                }
                break;
                
            case "search":
                String keyword = request.getParameter("keyword");
                String search = request.getParameter("search");
                List<movie> results = movieDAO.getMovies(search, keyword);
                mv = new ModelAndView("searchReply");
                mv.addObject("keyword", keyword);
                mv.addObject("result", results);
                break;
                
            case "result":
                mv = new ModelAndView("movieStore");
                break;
            default:
                mv = new ModelAndView("movieStore");
                break;
        }
        return mv;
    }
    
}
