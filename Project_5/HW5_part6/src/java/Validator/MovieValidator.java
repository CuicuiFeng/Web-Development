/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Validator;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import Model.*;
/**
 *
 * @author fengcu
 */
public class MovieValidator implements Validator {
    @Override
    public boolean supports(Class cla) {
        return Movie.class.isAssignableFrom(cla);
    }

    @Override
    public void validate(Object command, Errors errors) {
        Movie movie = (Movie)command;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "title", "error.title.required", "Title required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "actor", "error.actor.required", "Actor required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "actress", "error.actress.required", "Actress required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "genre", "error.genre.required", "Genre required");
        
        System.out.println(movie.getYear());
        if (movie.getYear() == null) {
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "year", "error.year.required", "Year required");
        } else if (movie.getYear() < 1900 || movie.getYear() > 2100) {
            errors.rejectValue("year", "error.year.outOfRange");
        }
        if (errors.hasErrors())
            return;
    }
}
