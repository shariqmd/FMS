package com.myfms.dao;

import java.util.Date;
import java.util.List;

import com.myfms.entity.MyAdmin;
import com.myfms.entity.MyFms;
import com.myfms.entity.MyService;

public interface MyFmsDao {

	void book(MyFms thefms);

	void mybooking(MyService theservice);

	List<MyFms> getDetails();

	List<MyService> getMyDetails();

	List<MyFms> Details();

	void myadminbook(MyAdmin theadmin);

	List<MyService> information();

	MyAdmin getInformation(int myid);

	List<MyFms> getcollect(Date myownvisit, Date myownvisit1);

	List<MyService> mycollect(Date myownvisit, Date myownvisit1);

	List<MyAdmin> getAdminDetails();




	

	/*List<MyAdmin> getinformation();*/

}
