/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Part5;
import java.util.*;

/**
 *
 * @author fengcu
 */
public class item {
    private String itemName;
    private int itemCount;
    
    public item(String itemName, int itemCount){
        this.itemName=itemName;
        this.itemCount=itemCount;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public int getItemCount() {
        return itemCount;
    }

    public void setItemCount(int itemCount) {
        this.itemCount = itemCount;
    }
    
}
