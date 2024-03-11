package utility;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateFactory {
	
	static SessionFactory sessionFactory = null;

    public static SessionFactory getSessionFactory() {
       if (sessionFactory != null) {
         return sessionFactory;
       }
       Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
       //StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
       //sessionFactory = configuration.buildSessionFactory(builder.build());
       sessionFactory = configuration.buildSessionFactory();
       return sessionFactory;
    }
    
    public static void closeFactory() {
    	
    	if(sessionFactory.isOpen()) {
    		sessionFactory.close();
    	}
    	
    }

}
