package model;

import org.hibernate.Session;

public class CardDAO {
	private Dbconfig db;
	private Session sess;
	public CardDAO()
	{
		db=new Dbconfig();
	}
    
	public boolean insertcard(Card c)
	{
		try
		{
			sess = db.getSession();
			sess.beginTransaction();
			sess.save(c);
			sess.getTransaction().commit();	
		}
		catch(Exception ex)
		{
			sess.getTransaction().rollback();
			ex.printStackTrace();
		}
		return false;	
	}
	
}
