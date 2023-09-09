package com.klu.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;
@Controller
public class EmployeeController 
{
@Autowired
EmployeeService empservice;

@GetMapping("/addemployee")
public ModelAndView addemployee()
{
	return new ModelAndView("addemployee","emp",new Employee());
	
}
	
@PostMapping("/submitempdata")
public ModelAndView submitempdata(@ModelAttribute("emp") Employee emp)
{
	empservice.addemployeerecord(emp);
	ModelAndView mv=new ModelAndView();
	mv.setViewName("addsuccess");
	mv.addObject("id",emp.getId());
	return mv;
	
}
/*@GetMapping("/login")
public String login(Model model, String error, String logout) {
    if (error != null)
        model.addAttribute("error", "Your username and password is invalid.");

    if (logout != null)
        model.addAttribute("message", "You have been logged out successfully.");

    return "login";
}
*/

@GetMapping("/dietplan")
  public String health(String healthissues) {
	System.out.println("dietplan");
	
if(empservice.find1(healthissues)!=null)
		return "vegdiet";
	else
		return "nonvegdiet";
	
	
  }
}
