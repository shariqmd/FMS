package com.myfms.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myfms.entity.MyAdmin;
import com.myfms.entity.MyFms;
import com.myfms.entity.MyService;


@Repository
public class MyFmsDaoImpl implements MyFmsDao {

	@Autowired
	private SessionFactory sessionfactory;
	
	@Override
	public void book(MyFms thefms) {
		
		Session session=sessionfactory.getCurrentSession();
		session.saveOrUpdate(thefms);
	
		
	}

	@Override
	public void mybooking(MyService theservice) {
		
		Session session=sessionfactory.getCurrentSession();
		session.saveOrUpdate(theservice);
		
	}

	@Override
	public List<MyFms> getDetails() {
		// TODO Auto-generated method stub
		System.out.println("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD");
		Session session=sessionfactory.getCurrentSession();
		 Query<MyFms>userquery=session.createQuery("from MyFms order by id desc",MyFms.class);
		List<MyFms>userlist =userquery.getResultList();
		System.out.println("LLLLLLLLLLLLLLLLLLL" +userlist.toString());
		return userlist;
	}

	@Override
	public List<MyService> getMyDetails() {
	Session session=sessionfactory.getCurrentSession();
	Query<MyService>userquery=session.createQuery("from MyService order by id desc");
	List<MyService>userlist=userquery.list();
		return userlist;
	}

	@Override
	public List<MyFms> Details() {
		Session session=sessionfactory.getCurrentSession();
		Query<MyFms>userquery=session.createQuery("from MyFms  order by id desc");
		List<MyFms>userlist=userquery.list();
		System.out.println("Dao Completed");
		return userlist;
	}

	@Override
	public void myadminbook(MyAdmin theadmin) {
		
		Session session=sessionfactory.getCurrentSession();
		session.saveOrUpdate(theadmin);
		
	}

	@Override
	public List<MyService> information() {
		
		Session session=sessionfactory.getCurrentSession();
		Query<MyService>userquery=session.createQuery("from MyService order by id desc");
		List<MyService>userlist=userquery.list();
		System.out.println("Lit is---------------------------" +userlist);
		return userlist;
	}

	@Override
	public MyAdmin getInformation(int myid) {
		
		Session session=sessionfactory.getCurrentSession();
		MyAdmin mystore=session.get(MyAdmin.class,myid);
		return mystore;
	}

	@Override
	public List<MyFms> getcollect(Date myownvisit, Date myownvisit1) {
		System.out.println("MyID IS----------------------<" +myownvisit+"uuuuuuuuuuuuuu"+myownvisit1);//Printing the id
	//	Session session=sessionfactory.getCurrentSession();
		/*Query <MyFms>query=session.createQuery("from MyFms where dateOfVisit BETWEEN :myownvisit AND :myownvisit1");
		 query.setParameter("myownvisit",myownvisit);
		 query.setParameter("myownvisit1",myownvisit1);*/
		 List result=sessionfactory.getCurrentSession()
				 .createQuery("FROM MyFms AS m WHERE m.dateOfVisit BETWEEN :stDate AND :edDate ")
				 .setParameter("stDate", myownvisit.toString())
				 .setParameter("edDate", myownvisit1.toString())
				 .list();
		 
		 List<MyFms> myfmss = result;
		 System.out.println("OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO------------------------------->Zindabad"+result);
		return myfmss;
	}

	@Override
	public List<MyService> mycollect(Date myownvisit, Date myownvisit1) {
	   List result= sessionfactory.getCurrentSession()
			   .createQuery("FROM MyService AS m WHERE m.dateOfVisit BETWEEN :stDate AND :edDate")
			   .setParameter("stDate", myownvisit.toString())
			   .setParameter("edDate", myownvisit1.toString())
			   .list();
	   
	   List<MyService> myservices=result;
		return myservices;
	}
	

	@Override
	public List<MyAdmin> getAdminDetails() {
		
		Session session=sessionfactory.getCurrentSession();
		Query<MyAdmin> query=session.createQuery("from MyAdmin order by id desc");
		List<MyAdmin> list=query.list();
		
	
		return list;
	}
	
    @Override
	public List<MyAdmin> myowncollect(Date myownvisit, Date myownvisit1) {
	
		List result= sessionfactory.getCurrentSession()
				   .createQuery("FROM MyAdmin AS m WHERE m.dateOfVisit BETWEEN :stDate AND :edDate")
				   .setParameter("stDate", myownvisit.toString())
				   .setParameter("edDate", myownvisit1.toString())
				   .list();
		   
		   List<MyAdmin> myadmins=result;
			return myadmins;
	}

	

	/*@Override
	public List<MyAdmin> getinformation() {
		Session session= sessionfactory.getCurrentSession();
		Query<MyAdmin>userquery=session.createQuery("from MyAdmin");
		List<MyAdmin>userlist=userquery.list();
		
		return userlist;
	}*/

}
