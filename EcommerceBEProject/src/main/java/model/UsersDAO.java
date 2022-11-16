package model;

import org.hibernate.Session;

public class UsersDAO {
	
	private Dbconfig db;
	private Session sess;
	public UsersDAO()
	{
		db=new Dbconfig();
	}
    
	public boolean insertUsers(Users u)
	{
		try
		{
			sess = db.getSession();
			sess.beginTransaction();
			sess.save(u);
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
