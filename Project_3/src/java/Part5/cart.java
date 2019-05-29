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
public class cart {
    private List<item> cart;

    public List<item> getCart() {
        return cart;
    }

    public void setCart(List<item> cart) {
        this.cart = cart;
    }
    
    public cart(){
        cart = new ArrayList<>();
    }
    
    public item findItem(String name){
        for(item item: cart){
            if(name.equals(item.getItemName()))
                return item;
        }
        return null;
    }
    
    public void addItem(item item){
        cart.add(item);
    }
    
    public void deleteItem(item item){
        cart.remove(item);
    }
    
    public void deleteItem(String itemName){
        item item = findItem(itemName);
        if(item!=null)
            deleteItem(item);
    }
    
    public void modifyItemCount(String itemName, int itemCount){
        for(item itm:cart){
            if(itemName.equals(itm.getItemName()))
                itm.setItemCount(itemCount);
        }
    }  
}
