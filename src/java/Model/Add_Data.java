/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author adelessam
 */
public class Add_Data {
     public void adddata(Super_DataBase items){
        Transaction trans=null;
        Session session = HibernateUtil.NewHibernateUtil.getSessionFactory().openSession();
        try{
            trans=session.beginTransaction();
            session.save(items);
            session.getTransaction().commit();
        
        }catch(RuntimeException e){
           if(trans!=null){
            trans.rollback();
           }
           e.printStackTrace();
        }finally{
           session.flush();
           session.close();
         }
    }

    
}
