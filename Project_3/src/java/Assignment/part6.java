/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Assignment;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;
/**
 *
 * @author fengcu
 */
public class part6 extends HttpServlet{
    private static final String CSV_JDBC_DRIVER = "org.relique.jdbc.csv.CsvDriver";
    private static final String CSV_JDBC_HEADER = "jdbc:relique:csv:";
    
    @Override
    protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String fileName = request.getParameter("fileName");
        String path = request.getRealPath("/files");
        session.setAttribute("filename", fileName);
        
        try {
            Class.forName(CSV_JDBC_DRIVER);
            Connection connection = DriverManager.getConnection(CSV_JDBC_HEADER + "/Users/fengcu/Desktop/6250/HW2/");
            Statement statement = connection.createStatement();
            ResultSet results = statement.executeQuery("select * from " + fileName);
            ResultSetMetaData data = results.getMetaData();

            int columnCount = data.getColumnCount();
            String[] titles = new String[columnCount];
            for (int i = 1; i <= columnCount; i++) {
                String title = data.getColumnName(i);
                titles[i-1] = title;
            }
            
            session.setAttribute("titles", titles);
            List<String[]> result = new ArrayList<>();
            while (results.next()) {
                String[] row = new String[columnCount];
                for (int i = 1; i <= columnCount; i++) {
                    String value = results.getString(i);
                    row[i-1] = value;
                }
                result.add(row);
            }
            
            session.setAttribute("results", result);
            results.close();
            statement.close();
            connection.close();
            request.getRequestDispatcher("part6_display.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //request.getRequestDispatcher("part6_display.jsp").forward(request, response);
    }
    
}
