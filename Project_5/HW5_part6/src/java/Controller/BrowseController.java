/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.*;
import Model.*;
import java.util.*;
import org.springframework.web.servlet.*;
import org.springframework.web.servlet.mvc.*;
/**
 *
 * @author fengcu
 */
@SuppressWarnings("deprecation")
public class BrowseController extends SimpleFormController {
    
    @Override
    protected ModelAndView onSubmit(Object command) {
        Search search = (Search)command;
        MovieDAO movieDAO = new MovieDAO();
        List<Movie> results = movieDAO.getMovies(search.getType(), search.getKeyword());
        ModelAndView mv = new ModelAndView("browseResult");
        mv.addObject("keyword", search.getKeyword());
        mv.addObject("result", results);
        return mv;
    }
    
}
