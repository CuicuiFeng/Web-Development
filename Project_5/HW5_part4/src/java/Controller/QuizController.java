/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import Model.*;
import java.util.*;
import javax.servlet.http.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

/**
 *
 * @author fengcu
 */
@Controller
@RequestMapping("/quiz")
public class QuizController {
    @RequestMapping("/{questionIndex:[\\d]+}.htm")
    public ModelAndView questionHandler(@PathVariable("questionIndex") int questionIndex,
            HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mv = new ModelAndView("quiz");
        HttpSession session = request.getSession();
        List<Question> questionList;
        if (session.getAttribute("questionList") == null) {
            questionList = initializeQuestionList();
            session.setAttribute("questionList", questionList);
        } else {
            questionList = (List<Question>)session.getAttribute("questionList");
        }

        Map<Question, Character> userAnswer;
        if (session.getAttribute("userAnswer") == null) {
            userAnswer = initializeUserAnswer(questionList);
            session.setAttribute("userAnswer", userAnswer);
        } else {
            userAnswer = (Map<Question, Character>)session.getAttribute("userAnswer");
        }

        if (questionIndex != 1) {
            String lastAnswer = request.getParameter("option");
            userAnswer.put(questionList.get(questionIndex - 2), lastAnswer == null ? '\0' : lastAnswer.charAt(0));
//            System.out.println("Question " + (questionIndex - 2) + ": ");
//            System.out.println(lastAnswer);
            session.setAttribute("userAnswer", userAnswer);
        }

        mv.addObject("page", "question");
        mv.addObject("questionIndex", questionIndex);
        mv.addObject("question", questionList.get(questionIndex - 1));
        return mv;
    }

    @RequestMapping("/result.htm")
    public ModelAndView resultHandler(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mv = new ModelAndView("quiz");
        HttpSession session = request.getSession();

        List<Question> questionList = (List<Question>)session.getAttribute("questionList");
        Map<Question, Character> userAnswer = (Map<Question, Character>)session.getAttribute("userAnswer");
        String lastAnswer = request.getParameter("option");
        userAnswer.put(questionList.get(2), lastAnswer == null ? '\0' : lastAnswer.charAt(0));
        session.setAttribute("userAnswer", userAnswer);

        mv.addObject("page", "result");
        mv.addObject("questionList", questionList);
        mv.addObject("userAnswer", userAnswer);

        return mv;
    }

    private List<Question> initializeQuestionList() {
        List<Question> questionList = new ArrayList<>();
        questionList.add(new Question(
                "Which of these life-cycle method you can over-ride in your class?",
                "init()",
                "service()",
                "doGet()",
                "All of these",
                'D'
        ));
        questionList.add(new Question(
                "Which statement is not true about ServletContext?",
                "There is one ServletContext per one application",
                "Generally it is used to get web app parameters",
                "We can get Server Information through it",
                "There is one Servlet Context per one servlet",
                'D'
        ));
        questionList.add(new Question(
                "Which life cycle method is called once in servlet life?",
                "class loading",
                "init()",
                "service()",
                "destroy()",
                'B'
        ));
        return questionList;
    }

    private Map<Question, Character> initializeUserAnswer(List<Question> questionList) {
        Map<Question, Character> userAnswer = new HashMap<>();
        for (Question question : questionList) {
            userAnswer.put(question, null);
        }
        return userAnswer;
    }
}
