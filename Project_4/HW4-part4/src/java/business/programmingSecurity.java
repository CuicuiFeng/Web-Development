/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import sun.misc.BASE64Decoder;

/**
 *
 * @author fengcu
 */
public class programmingSecurity extends HttpServlet{
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws ServletException, IOException{
        String authorization = request.getHeader("Authorization");
        if(authorization == null){
            askForPassword(response);
        }
        else{
            String userInfo = authorization.substring(6).trim();
            BASE64Decoder decoder = new BASE64Decoder();
            String nameAndPassword = new String(decoder.decodeBuffer(userInfo));
            
            //decoded part looks like user:password
            int index = nameAndPassword.indexOf(":");
            String user = nameAndPassword.substring(0,index);
            String password = nameAndPassword.substring(index+1);
            
            if(areEqualReversed(user,password)){
                request.getRequestDispatcher("jsp/input.jsp").forward(request,response);
            }
            else{
                askForPassword(response);
            }
        }
    }

        //if no authorization header was supplied in the request
        private void askForPassword(HttpServletResponse response){
            //send 401
                response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
                response.setHeader("www-Authenticate", "BASIC realm= 'Insider-Trading'");
                }
        
        private boolean areEqualReversed(String s1, String s2){
            s2 = (new StringBuffer(s2)).reverse().toString();
            return(s1.length()>0) && s1.equals(s2);
        }
    
}
