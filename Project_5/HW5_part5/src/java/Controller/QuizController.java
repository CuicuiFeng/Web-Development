/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import org.springframework.validation.*;
import org.springframework.web.servlet.*;
import org.springframework.web.servlet.mvc.*;
import javax.servlet.http.*;
import Model.*;

/**
 *
 * @author fengcu
 */
public class QuizController extends AbstractWizardFormController {
    private String successView;
    private String cancelView;

    @Override
    protected Object formBackingObject(HttpServletRequest request) {
        System.out.println("Form Backing Object: ");
        HttpSession session = request.getSession();

        QuestionList questionList;
        if (session.getAttribute("questionList") == null) {
            questionList = initializeQuestionList();
            session.setAttribute("questionList", questionList);
        } else {
            questionList = (QuestionList)session.getAttribute("questionList");
        }

        return questionList.getQuestion(0);
    }

    @Override
    protected void validatePage(Object command, Errors errors, int page) {

    }

    @Override
    protected void postProcessPage(HttpServletRequest request, Object command, Errors errors, int page) {
        System.out.println("Post Process Page: ");
        HttpSession session = request.getSession();
        QuestionList questionList = (QuestionList)session.getAttribute("questionList");

        if (page >= 0 && page <= 2) {
            Question question = (Question)command;
            System.out.println("Current Page: " + page);
            System.out.println("Target Page: " + getTargetPage(request, page));
            System.out.println("Question " + (page+1));
            System.out.println("User Option: " + question.getUserOption());

            questionList.getQuestion(page).setUserOption(question.getUserOption());
            session.setAttribute("questionList", questionList);
            question.setQuestionObject(questionList.getQuestion(getTargetPage(request, page)));
        }
    }

    @Override
    protected ModelAndView processFinish(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) {
        HttpSession session = request.getSession();
        QuestionList questionList = (QuestionList)session.getAttribute("questionList");
        int page = getCurrentPage(request);

        Question question = (Question)command;
        System.out.println("Question " + (page+1));
        System.out.println("User Option: " + question.getUserOption());

        questionList.getQuestion(page).setUserOption(question.getUserOption());
        session.setAttribute("questionList", questionList);
        ModelAndView mv = new ModelAndView(getSuccessView());
        mv.addObject("specialPage", "finish");
        mv.addObject("questionList", questionList);
        return mv;
    }

    @Override
    protected ModelAndView processCancel(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) {
        ModelAndView mv = new ModelAndView(getCancelView());
        mv.addObject("specialPage", "cancel");
        return mv;
    }

    private QuestionList initializeQuestionList() {
        QuestionList questionList = new QuestionList();
     
        questionList.addQuestion(new Question(
                "Which interface contain servlet life-cycle methods?",
                "HttpServlet",
                "GenericServlet",
                "Service",
                "Servlet",
                "D"
        ));
        
        questionList.addQuestion(new Question(
                "Which tag of DD maps internal name of servlet to public URL pattern?",
                "servlet",
                "servlet-mapping",
                "web-app",
                "servlet-mappings",
                "B"
        ));
       
        questionList.addQuestion(new Question(
                "Which statement is not true about ServletConfig?",
                "There is one servlet config per one application",
                "We can access ServletContext through it",
                "provide deploy-time information to server",
                "There is one servlet config per one servlet",
                "A"
        ));
        return questionList;
    }

    public String getSuccessView() {
        return successView;
    }

    public void setSuccessView(String successView) {
        this.successView = successView;
    }

    public String getCancelView() {
        return cancelView;
    }

    public void setCancelView(String cancelView) {
        this.cancelView = cancelView;
    }
}