/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 *
 * @author adelessam
 */
public class Simple_methods {
   public String name(String name){
        String newnamee="",newname="";
        for (int i=name.length()-1; i >=0; i--) {
             if(name.charAt(i)!='\\'){
                 newnamee+=name.charAt(i);
                
             }else{
             break;
             }
    }
          for (int i=newnamee.length()-1; i >=0; i--) {
              newname+=newnamee.charAt(i);
          }
     return newname;
    }
    public String path(String name){
       String newnamee="",newname="";
        int count=0;
        for (int i=name.length()-1; i >=0; i--) { 
            if(name.charAt(i)!='\\'){
              if(count>2){
                    break;
                 }
                newnamee+=name.charAt(i);
                 
             }else {
                newnamee+=name.charAt(i);
                count++;
             }
    }
          for (int i=newnamee.length()-2; i >=0; i--) {
              newname+=newnamee.charAt(i);
          }
     return newname;
}
 public String getextention(String name){
          String newname="",extention=".";
        for (int i=name.length()-1; i >=0; i--) {
             if(name.charAt(i)!='.'){
                 newname+=name.charAt(i);
                
             }else{
             break;
             }
    }
          for (int i=newname.length()-1; i >=0; i--) {
              extention+=newname.charAt(i);
          }
     return extention;

    }
  public  String date_now() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        Calendar c = Calendar.getInstance();
        c.setTime(c.getTime()); // Now use today date.

        String output = sdf.format(c.getTime());

        return output;
    }

   public String time_now() {
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");

        Calendar c = Calendar.getInstance();
        c.setTime(c.getTime()); // Now use today date.

        String output = sdf.format(c.getTime());

        return output;
    }
  public   String primary_name()
    {
        String text=date_now()+String.valueOf( (int)(Math.random()*1000) );
        return text;
    }
    
}