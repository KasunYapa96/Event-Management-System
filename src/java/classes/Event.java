/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.io.Serializable;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
public class Event implements Serializable{
    
    Database db = new Database();
    
    private int id;
    private String eventName;
    private String venue;
    private String date;
    private String timestamp;
    private String eventImage;
    private String description;
    private String category;
    
    
    public Event() {
    }

    public Event(int id, String eventName, String venue, String date, String timestamp, String eventImage, String description, String category) {
        this.id = id;
        this.eventName = eventName;
        this.venue = venue;
        this.date = date;
        this.timestamp = timestamp;
        this.eventImage = eventImage;
        this.description = description;
        this.category = category;
    } 
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public String getVenue() {
        return venue;
    }

    public void setVenue(String venue) {
        this.venue = venue;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }

    public String getEventImage() {
        return eventImage;
    }

    public void setEventImage(String eventImage) {
        this.eventImage = eventImage;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
    public void addEvent(String eventName,String venue,String date,String eventImage,String Description,String Category) throws Exception{
        String cat = Category.toUpperCase();
        String query ="INSERT INTO events(eventName,venue,date,eventImage,Description,category) VALUES ("+eventName+"','"+venue+"','"+date+"',"+eventImage+","+Description+",'"+cat+"')";
        System.out.println(query);
        try{
        db.setData(query);
        }catch (Exception e){

        }finally{
           
        } 
        
    }
    
    public void eventOpinion(String opinion,int eventID,int userID){
        String op = "";
        String q2 ="SELECT * FROM eventopinion where eventID="+eventID+"and userID="+userID;
        ResultSet rs;
        try {
            rs = db.getData(q2);
            while(rs.next()){
                op = rs.getString("opinion");
                if(!op.equals("")){
                    String q3 ="UPDATE eventopinion SET opinion='"+opinion+"' where userID="+userID+" and eventID="+eventID+"";
                    db.setData(q3);
                }
            }
            
        } catch (Exception ex) {
            Logger.getLogger(Event.class.getName()).log(Level.SEVERE, null, ex);
        }
        
           
            
        
        
        String query ="INSERT INTO eventopinion(eventID,userID,opinion) VALUES ("+eventID+","+userID+",'"+opinion+"')";
        System.out.println(query);
        try{
        db.setData(query);
        }catch (Exception e){

        }finally{
           
        } 
        
    }
    
    
    public void addComment(String comment,String userID, String eventID){
        
        String query ="INSERT INTO eventcomments(comment,userID,eventID) VALUES ('"+comment+"',"+userID+","+eventID+")";
        System.out.println(query);
        try{
        db.setData(query);
        }catch (Exception e){

        }finally{
           
        } 
        
    }
    
    public ResultSet getComments(String id){
        ResultSet rs = null;
        String query = "SELECT * FROM eventcomments where eventID="+id+"";
        try {
            rs = db.getData(query);
        } catch (Exception ex) {
            Logger.getLogger(IdeaHub.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    
    
    
}
