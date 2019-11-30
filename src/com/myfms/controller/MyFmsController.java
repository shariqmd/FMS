package com.myfms.controller;


import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import java.text.SimpleDateFormat;  
import java.util.Date;  
import com.myfms.entity.MyAdmin;
import com.myfms.entity.MyFms;
import com.myfms.entity.MyService;
import com.myfms.service.MyFmsService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
@Controller
public class MyFmsController {
	
	@Autowired
	
	private MyFmsService myfmsservice;
	
	@RequestMapping("/household")
	public String showForm(Model model) {
		MyFms myfms=new MyFms();
		model.addAttribute("Fms",myfms);
		
		
		return "home";
		
		
	}

	@RequestMapping("/processSurvey")
	public String processSurvey(@ModelAttribute("Fms") MyFms thefms, Model model) {
		
		myfmsservice.book(thefms);
		
		// recently added
		
		MyFms myfms=new MyFms(); //for open the pojo class
		System.out.println("mmmmmmmmmmmmmmmmmmmmmmmm");
		List<MyFms>fms=myfmsservice.getDetails();
		model.addAttribute("Fms",myfms);// to show the result
		model.addAttribute("store55",fms);// to show the result
		
		 model.addAttribute("message","Data Saved Successfully");
		
		return "home";
		
		
	
		
		
	}
	
	@RequestMapping("/serviceProvider")
	public String serviceProvider(Model model) {
		MyService myservice=new MyService();
		model.addAttribute("Fms1",myservice);
		
		return "serviceprovider";
		
		
	}
	
	@RequestMapping("/processSurvey1")
	public String SurveyProcess(@ModelAttribute("Fms1") MyService theservice, Model model) {
		
		myfmsservice.mybooking(theservice);
		
		//recently added
		
		MyService com= new MyService();
		List<MyService>myservice=myfmsservice.getMyDetails();
		model.addAttribute("Fms1",com);
		model.addAttribute("store50",myservice);
		
		 model.addAttribute("message","Data Saved Successfully");
		
		return "serviceprovider";
		
		
	}
	@RequestMapping("/search")
	public String mySearch(Model model) {
		MyFms myfms=new MyFms(); //for open the pojo class
		System.out.println("mmmmmmmmmmmmmmmmmmmmmmmm");
		List<MyFms>fms=myfmsservice.getDetails();
		model.addAttribute("Fms",myfms);// to show the result
		model.addAttribute("store55",fms);// to show the result
		
		return "home";
		
		
	}
	
	@RequestMapping("/mysearch")
	public String MySearch(Model model) {
		MyService com= new MyService();
		List<MyService>myservice=myfmsservice.getMyDetails();
		model.addAttribute("Fms1",com);
		model.addAttribute("store50",myservice);
		
		return "serviceprovider";
		
		
	}
	
	@RequestMapping("/admin")
	public String Admin(Model model) {
		
		MyAdmin myadmin= new MyAdmin();
		model.addAttribute("store90",myadmin);
		
		
		
	
		
		return "adminpage";
		
		
		
	}
	@RequestMapping("/processadmin")
	public String ProcessAdmin(@ModelAttribute("store90") MyAdmin theadmin, Model model) {
		
		
		myfmsservice.myadminbook(theadmin);
		
		//recently added
		
		List<MyAdmin> admin=myfmsservice.getAdminDetails();
		model.addAttribute("store123",admin);
		MyAdmin myadmin= new MyAdmin();
		model.addAttribute("store90",myadmin);
		
		 model.addAttribute("message","Data Saved Successfully");
		
		
		return "adminpage";
		
	}
	
	
	@RequestMapping("/adminsearch")
	public String adminSearch(Model model) {
		
		List<MyAdmin> admin=myfmsservice.getAdminDetails();
		model.addAttribute("store123",admin);
		MyAdmin myadmin= new MyAdmin();
		model.addAttribute("store90",myadmin);
		
		return "adminpage";
		
		
	}
	
	
	
	
	
	@RequestMapping("/hold")
	@ResponseBody
	public String holder(Model model) {
		System.out.println("Called By Ajax");
	     MyFms myfms=new MyFms();    
		 List<MyFms>record=myfmsservice.Details();
		 MyAdmin myadmin= new MyAdmin();
		 model.addAttribute("store90",myadmin);
		 model.addAttribute("Fms",myfms);
	     model.addAttribute("store85",record);
	     System.out.println("COntroller Completed" +record);
	     String json = new Gson().toJson(record);
	     System.out.println(json);
		return json;
		
		
	}
	
	@RequestMapping("/provider")
	@ResponseBody
	public String Provider(Model model) {
		MyService com= new MyService();
		 MyAdmin myadmin= new MyAdmin();
		List<MyService>myrecord=myfmsservice.information();
		model.addAttribute("Fms1",com);
		model.addAttribute("store87",myrecord);
		 model.addAttribute("store90",myadmin);
		 String json = new Gson().toJson(myrecord);
		 System.out.println(json);
		 System.out.println("COmpleted000000000000000000000000000000000000000");
		 
		 return json;
		
		
		
		
		
		
		
	}
	
	/*@RequestMapping("/modify")
	public String Modify(Model model) {
		 
        List<MyAdmin>inform=myfmsservice.getinformation();
		model.addAttribute("store89",inform);
		
		 
		
		return "modifydone";
		
		
		
	}*/
	
	@RequestMapping("/modify")
	public String Modify(@RequestParam("id") int myid,Model model) {
		
		System.out.println("MyID IS----------------------<" +myid);//Printing the id
		MyAdmin admin=myfmsservice.getInformation(myid);
		MyAdmin myadmin= new MyAdmin();
		model.addAttribute("store90",myadmin);
		
		model.addAttribute("store90",admin);
		
		
		return "adminpage";
		
		
	}
	
	@RequestMapping("/myownsearch")
	public String myownsearch(@RequestParam("fromDateOfVisit") String myownvisit,@RequestParam ("toDateOfVisit") String myownvisit1, Model model) throws ParseException {
		System.out.println("MyID IS----------------------<" +myownvisit+"uuuuuuuuuuuuuu"+myownvisit1);//Printing the id
		  
		//String string = "2011-03-22";
		Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(myownvisit);
		Date date2 = new SimpleDateFormat("yyyy-MM-dd").parse(myownvisit1);
		java.sql.Date mySqlDate1 = new java.sql.Date(date1.getTime());
		java.sql.Date mySqlDate2 = new java.sql.Date(date2.getTime());


		List<MyFms> myownfms=myfmsservice.getcollect(mySqlDate1,mySqlDate2);
		model.addAttribute("store47",myownfms);
		MyFms myfms=new MyFms();
		model.addAttribute("Fms",myfms);
		
		
		return "home";
		
		
	}
	
	@RequestMapping("/myownsearches")
	public String myownsearches(@RequestParam("fromDateOfVisit") String myownvisit,@RequestParam ("toDateOfVisit") String myownvisit1, Model model) throws ParseException {
		System.out.println("MyID IS----------------------<" +myownvisit+"uuuuuuuuuuuuuu"+myownvisit1);//Printing the id
		  
		//String string = "2011-03-22";
		Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(myownvisit);
		Date date2 = new SimpleDateFormat("yyyy-MM-dd").parse(myownvisit1);
		java.sql.Date mySqlDate1 = new java.sql.Date(date1.getTime());
		java.sql.Date mySqlDate2 = new java.sql.Date(date2.getTime());


		List<MyService> myownfms=myfmsservice.mycollect(mySqlDate1,mySqlDate2);
		model.addAttribute("store48",myownfms);
		MyService myservice=new MyService();
		model.addAttribute("Fms1",myservice);
		
		
		return "serviceprovider";
		
		
	}
	
	
}
