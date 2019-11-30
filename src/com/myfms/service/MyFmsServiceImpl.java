package com.myfms.service;



import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myfms.dao.MyFmsDao;
import com.myfms.entity.MyAdmin;
import com.myfms.entity.MyFms;
import com.myfms.entity.MyService;

@Service
public class MyFmsServiceImpl implements MyFmsService {
	@Autowired
	private MyFmsDao myfmsdao;
	
    @Transactional
	@Override
	public void book(MyFms thefms) {
		
		myfmsdao.book(thefms);
		
		
	}
    @Transactional
	@Override
	public void mybooking(MyService theservice) {
	
      myfmsdao.mybooking(theservice);		
	}
    @Transactional
	@Override
	public List<MyFms> getDetails() {
		// TODO Auto-generated method stub
		return myfmsdao.getDetails();
	}
    
    @Transactional
	@Override
	public List<MyService> getMyDetails() {
		// TODO Auto-generated method stub
		return myfmsdao.getMyDetails();
	}
    
	@Override
	@Transactional
	public List<MyFms> Details() {
		
		return myfmsdao.Details();
	}
	@Transactional
	@Override
	public void myadminbook(MyAdmin theadmin) {
		
		myfmsdao.myadminbook(theadmin);
		
	}
	@Transactional
	@Override
	public List<MyService> information() {
	
		return myfmsdao.information();
	}
	
	@Transactional
	@Override
	public MyAdmin getInformation(int myid) {
	  
		
		return myfmsdao.getInformation(myid);
	}
	@Transactional
	@Override
	public List<MyFms> getcollect(Date myownvisit, Date myownvisit1) {
		// TODO Auto-generated method stub
		return myfmsdao.getcollect(myownvisit,myownvisit1);
	}
	
	@Transactional
	@Override
	public List<MyService> mycollect(Date myownvisit, Date myownvisit1) {
		
		return myfmsdao.mycollect(myownvisit,myownvisit1);
	}
	
	@Transactional
	@Override
	public List<MyAdmin> getAdminDetails() {
		
		return myfmsdao.getAdminDetails();
	}
	
	
	
	
	
	
	
	/*@Transactional
	@Override
	public List<MyAdmin> getinformation() {
	
		return myfmsdao.getinformation();
	}*/
	
	

}
