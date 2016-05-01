/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author adelessam
 */
public class Add_Admin {
    public void addAdmin(AdminClass admin){
        Transaction trans=null;
        Session session = HibernateUtil.NewHibernateUtil.getSessionFactory().openSession();
        try{
            trans=session.beginTransaction();
            session.save(admin);
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
