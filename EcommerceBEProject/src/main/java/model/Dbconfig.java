package model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Dbconfig {
	
	private Configuration cfg;
	private SessionFactory sf;
	private Session session;
	
	public Dbconfig()
	{
		cfg = new Configuration();
		cfg.addAnnotatedClass(Product.class);
		cfg.addAnnotatedClass(Users.class);
		cfg.addAnnotatedClass(Details.class);
		cfg.addAnnotatedClass(Card.class);
		sf =  cfg.configure("hibernate.cfg.xml").buildSessionFactory();
			 
	}
	public Session getSession()
	{
		session = sf.getCurrentSession();
		return session;
	}
	
}
