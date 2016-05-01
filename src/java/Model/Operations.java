/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author adelessam
 */
public class Operations {

    public void Insert(Super_DataBase items) {
        Transaction trans = null;
        Session session = HibernateUtil.NewHibernateUtil.getSessionFactory().openSession();
        try {
            trans = session.beginTransaction();
            session.save(items);
            session.getTransaction().commit();

        } catch (RuntimeException e) {
            if (trans != null) {
                trans.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
    }

    public void Delete(Super_DataBase items) {
        Transaction trans = null;
        Session session = HibernateUtil.NewHibernateUtil.getSessionFactory().openSession();
        try {
            trans = session.beginTransaction();
            session.delete(items);
            session.getTransaction().commit();

        } catch (RuntimeException e) {
            if (trans != null) {
                trans.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
    }

    public void Update(Integer id, String hints) {
        Transaction tx = null;
        Session session = HibernateUtil.NewHibernateUtil.getSessionFactory().openSession();
        try {

            tx = session.beginTransaction();
            Super_DataBase data = (Super_DataBase) session.get(Super_DataBase.class, id);
            data.setHints(hints);
            session.update(data);
            tx.commit();

        } catch (RuntimeException e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
    }

    public List<Super_DataBase> filling_table(String table) {
        Transaction trans = null;
        List<Super_DataBase> database = null;
        Session session = HibernateUtil.NewHibernateUtil.getSessionFactory().openSession();
        try {
            org.hibernate.Query query = session.createQuery("from Super_DataBase where type=? ");
            query.setString(0, table);
            database = query.list();

        } catch (RuntimeException e) {
            if (trans != null) {
                trans.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return database;
    }

    public Super_DataBase Get_path(int id) {
        Transaction trans = null;
        Super_DataBase data = null;
        Session session = HibernateUtil.NewHibernateUtil.getSessionFactory().openSession();
        try {
            String queryString = "from Super_DataBase where id=?";
            org.hibernate.Query query = session.createQuery(queryString);
            query.setInteger(0, id);
            Object queryResult = query.uniqueResult();
            data = (Super_DataBase) queryResult;
            session.getTransaction().commit();
        } catch (RuntimeException e) {
            if (trans != null) {
                trans.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return data;

    }

    public List<Super_DataBase> Get_paths(String type) {
        Transaction trans = null;
        List<Super_DataBase> img_info = null;
        Session session = HibernateUtil.NewHibernateUtil.getSessionFactory().openSession();
        try {
            String queryString = "from Super_DataBase WHERE type=?";
            org.hibernate.Query query = session.createQuery(queryString);
            query.setString(0, type);
            img_info =query.list();
           session.getTransaction().commit();
        } catch (RuntimeException e) {
            if (trans != null) {
                trans.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return img_info;

    }

}
