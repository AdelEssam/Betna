/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.List;
import javax.persistence.Query;
import javax.swing.JOptionPane;
import org.hibernate.Session;

/**
 *
 * @author adelessam
 */
public class Check_Admin {

    public boolean check(AdminClass admin) {
        boolean user = false;
        Session session = HibernateUtil.NewHibernateUtil.getSessionFactory().openSession();
        try {
            org.hibernate.Query q = session.createQuery("FROM AdminClass WHERE username =? and Password=?");
              q.setString(0, admin.getUsername());
              q.setString(1, admin.getPassword());
              List<AdminClass> checkuser=q.list();
             for(AdminClass ad:checkuser){ 
            if (ad.getUsername()!= null && ad.getPassword()!=null) {
                user = true;
            } else {
                user = false;
            }
             }
        } catch (RuntimeException w) {
            w.printStackTrace();

        }
        return user;
    }
}
