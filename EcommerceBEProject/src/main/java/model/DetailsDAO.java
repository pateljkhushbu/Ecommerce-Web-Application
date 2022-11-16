package model;

import org.hibernate.Session;

public class DetailsDAO {
	
	private Dbconfig db;
	private Session sess;
	public DetailsDAO()
	{
		db=new Dbconfig();
	}
	public boolean insertDetails(Details d)
	{
		try
		{
			sess = db.getSession();
			sess.beginTransaction();
			sess.save(d);
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
