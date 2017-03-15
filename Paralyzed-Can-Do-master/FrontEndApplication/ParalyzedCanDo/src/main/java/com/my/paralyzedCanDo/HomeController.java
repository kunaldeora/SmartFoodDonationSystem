package com.my.paralyzedCanDo;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//private List<VitalSign> vitalSignsLists ;//= new List<VitalSign>();
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String home(@RequestParam("action") String act,@RequestParam("v_id") int vId,HttpServletRequest request) {
		
				
		
		Configuration cfg = new Configuration();
		SessionFactory sf = cfg.configure().buildSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		Query query = session.getNamedQuery("pr_insert_into_interpretor")
			    .setParameter("action", act)
			    .setParameter("v_id", vId);
		
		query.executeUpdate();

		tx.commit();
		
		if(act.equals("N")){
			Transaction tx1 = session.beginTransaction();
			Query query2 = session.getNamedQuery("pr_fetch_vital_sign");
			
			
			VitalSign vs1 = (VitalSign) query2.list().get(0);
			
			request.getSession().setAttribute("list", vs1);
			
			return "display";
			
		}
		
		
		return "home";
	}
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String displayVitalSigns(Model model,HttpServletRequest request){
		
		
		Configuration cfg = new Configuration();
		SessionFactory sf = cfg.configure().buildSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		Query query = session.getNamedQuery("pr_fetch_vital_sign");
		
		VitalSign vs = (VitalSign) query.list().get(0);
		
				
		//request.getSession().setAttribute("var", 1);
		model.addAttribute("list",vs);
		
		
		
		
		
				
				
		
		
		
		
		
		return "display";
	}
	
	
	
	
}
