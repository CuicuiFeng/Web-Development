/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.*;
import Model.*;
import org.springframework.web.servlet.*;
import org.springframework.web.servlet.mvc.*;
/**
 *
 * @author fengcu
 */
@SuppressWarnings("deprecation")
public class AddController extends SimpleFormController {
    protected ModelAndView onSubmit(Object command) {
        Movie movie = (Movie)command;
        MovieDAO movieDAO = new MovieDAO();
        int result = movieDAO.addMovie(movie);
        return new ModelAndView("addResult", "result", result);
    }
}
