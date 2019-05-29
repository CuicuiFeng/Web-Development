/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import java.io.*;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 *
 * @author fengcu
 */
public class part6 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response) 
    throws ServletException, IOException {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            String fileName = request.getParameter("fileName");
        
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Read CSV</title>");
            out.println("</head>");
            out.println("<body style=\'background-color:rgba(230, 123, 185, 0.5);\'>");
            out.println(fileName);
            out.println("<h1 align = 'center'>Read Excel</h1>");
    
            try {
                FileInputStream fis = new FileInputStream(new File("/Users/fengcu/Desktop/6250/HW2/" + fileName));
                HSSFWorkbook workbook = new HSSFWorkbook(fis);
            
                for (int n = 0; n < workbook.getNumberOfSheets(); n++) {
                    out.println("<table border=0.5 align='center'>");
                    HSSFSheet sheet = workbook.getSheetAt(n);
                    
                    Iterator<Row> rowIterator = sheet.iterator();
                    while (rowIterator.hasNext()) {
                        Row row0 = rowIterator.next();
                        Iterator<Cell> cellIterator = row0.cellIterator(); 
                        out.println("<tr bgcolor='#FFAD00'>");
                        while (cellIterator.hasNext()) { 
                            Cell cell = cellIterator.next(); 
                            switch (cell.getCellType()) { 
                                case NUMERIC:
                                    if (HSSFDateUtil.isCellDateFormatted(cell)) {
                                        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
                                        Date date = cell.getDateCellValue();  
                                        out.print("<td>"+sdf.format(date));
                                    } else {
                                        double value = cell.getNumericCellValue();  
                                        CellStyle style = cell.getCellStyle();  
                                        DecimalFormat format = new DecimalFormat();  
                                        String temp = style.getDataFormatString();   
                                        if (temp.equals("General")) {  
                                            format.applyPattern("#");  
                                        }   
                                        out.print("<td>"+format.format(value));
                                        //out.print("<td>"+cell.getNumericCellValue()); 
                                    }
                                    break; 
                                case STRING: 
                                    out.print("<td>"+cell.getStringCellValue()); 
                                    break; 
                            } 
                        }
                    }
                }
                out.println("</table><br/>");
                workbook.close();
                fis.close();
            } catch(NullPointerException e) {
                System.out.println("no value");
            }
        out.println("</body>");
        out.println("</html>");   
    }
}
