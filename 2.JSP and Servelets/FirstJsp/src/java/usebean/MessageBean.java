/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package usebean;

/**
 *
 * @author bulbul
 */
public class MessageBean {
    private String message = " message not set yet"; 
    
    public String getMessage(){
        return message;
    }
    
    public void setMessage(String message){
        
        this.message = message;
    }
}
