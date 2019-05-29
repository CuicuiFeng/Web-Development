/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Part5;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author fengcu
 */
public class cartController extends HttpServlet{
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response)
            throws ServletException, IOException {
        String[] items = request.getParameterValues("computers");
        if(items==null)
            items = request.getParameterValues("books");
        if(items==null)
            items = request.getParameterValues("music");
        
        HttpSession session = request.getSession();
	cart cart = (cart)session.getAttribute("cart");
        if(cart==null){
            cart = new cart();
        }
        
        if(items==null){
            session.setAttribute("items", items);
            session.setAttribute("cart", cart);
            request.getRequestDispatcher("part5/part5_addReply.jsp").forward(request, response);
            return;
        }
        
        for(String itemName: items){
            item item = cart.findItem(itemName);
            if(item!=null){
                int amount = item.getItemCount();
                cart.modifyItemCount(itemName, ++amount);
            }
            else{
                cart.addItem(new item(itemName, 1));
            }
        }
        
        session.setAttribute("items", items);
        session.setAttribute("cart", cart);
        request.getRequestDispatcher("part5/part5_addReply.jsp").forward(request, response);
        return;
        
    }
    protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
	cart cart = (cart)session.getAttribute("cart");
        if (cart == null) {
            cart = new cart();
        }
        Enumeration<String> items = request.getParameterNames();
        
        while (items.hasMoreElements()) {
            String name = items.nextElement();
            if (name.equals("Submit")) continue;
            String amount = request.getParameter(name);
            int count = Integer.parseInt(amount);
            if (count == 0) {
                cart.deleteItem(name);
            } else {
                cart.modifyItemCount(name, count);
            }
        }
        
        session.setAttribute("cart", cart);
        request.getRequestDispatcher("part5/part5_viewCart.jsp").forward(request, response);
    }
    
    public String getServletInfo() {
        return "Short description";
    }
}
