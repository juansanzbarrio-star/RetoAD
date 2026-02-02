package modelo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class RegistrosDAO {
    
    private static SessionFactory factory;

    static {
        try {
            factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Registro.class).buildSessionFactory();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void guardarRegistro(Registro reg) {
        Session session = factory.getCurrentSession();
        try {
            session.beginTransaction();
            session.save(reg);
            session.getTransaction().commit();
        } finally {
            session.close();
        }
    }

    public Registro buscarRegistro(String numRegistro) {
        Session session = factory.getCurrentSession();
        Registro reg = null;
        try {
            session.beginTransaction();
            reg = session.get(Registro.class, numRegistro);
            session.getTransaction().commit();
        } finally {
            session.close();
        }
        return reg;
    }
}