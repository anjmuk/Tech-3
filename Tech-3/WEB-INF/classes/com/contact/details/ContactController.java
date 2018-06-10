package com.contact.details;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ModelAttribute;
import java.util.Map;
 
@Controller

public class ContactController {
	 @RequestMapping(value = "/Adding", method = RequestMethod.GET)
	    public String viewContactForm(Map<String, Object> model) {
	    	StudentContactDetails studentcontactForm = new StudentContactDetails();    
	        model.put("contactForm", studentcontactForm);
	         
	        List<String> organizationList = new ArrayList<String>();
	        organizationList.add("UNO Omaha");
	        organizationList.add("UNO Lincoln");
	        organizationList.add("Others");
	        model.put("organizationList", organizationList);
	         
	        return "addStudentcontact";
	    }
	 @RequestMapping(value = "/response", method = RequestMethod.POST)
	    public String processContact(@ModelAttribute("contactForm") StudentContactDetails contactDetails,
	            Map<String, Object> model) {
	         
	        // implement your own registration logic here...
	         
	        // for testing purpose:
	        System.out.println("firstname: " + contactDetails.getFirstname());
	        System.out.println("lastname: " + contactDetails.getLastname());
                System.out.println("phonenumber: " + contactDetails.getPhonenumber());
	        System.out.println("email: " + contactDetails.getEmail());
	        System.out.println("organization: " + contactDetails.getOrganization());
	         
	        return "contactSuccess";
	    }
}

