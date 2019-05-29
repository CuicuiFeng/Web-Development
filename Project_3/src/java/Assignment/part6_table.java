/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Assignment;
import java.util.*;
/**
 *
 * @author fengcu
 */
public class part6_table {
    private List<part6_rowElements> table;
    
    public part6_table() {
        table = new ArrayList<>();
    }

    public List<part6_rowElements> getTable() {
        return table;
    }

    public void setTable(List<part6_rowElements> table) {
        this.table = table;
    }
    
    public void addRow(part6_rowElements row) {
        table.add(row);
    }
    
}
