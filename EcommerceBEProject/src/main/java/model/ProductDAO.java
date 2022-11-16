package model;

import java.util.List;

import org.hibernate.Session;

public class ProductDAO {
	

	private Dbconfig db;
	private Session sess;
	public ProductDAO()
	{
		db=new Dbconfig();
	}
    
	public boolean insertProduct(Product p)
	{
		try
		{
			sess = db.getSession();
			sess.beginTransaction();
			sess.save(p);
			sess.getTransaction().commit();	
		}
		catch(Exception ex)
		{
			sess.getTransaction().rollback();
			ex.printStackTrace();
		}
		return false;	
	}
	
	public void updateProduct(Product pd)
	{
		try{
		sess =db.getSession();
		sess.beginTransaction();
		sess.update(pd);
		sess.save(pd);
		sess.getTransaction().commit();
		}
		catch(Exception ex)
		{
			sess.getTransaction().rollback();
			ex.printStackTrace();
		}
	
	}
	
	public void deleteProduct(Product pd)
	{
		try
		{
			sess =db.getSession();
			sess.beginTransaction();
			sess.delete(pd);
			sess.getTransaction().commit();

		}
		catch(Exception ex)
		{
			sess.getTransaction().rollback();
			ex.printStackTrace();
		}
	}

	
	public List<Product> getProducts()
	{
		List<Product> lp=null;
		try
		{
			sess =db.getSession();
			sess.beginTransaction();
			lp=sess.createQuery("from product",Product.class).getResultList();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return lp;
	}

}
