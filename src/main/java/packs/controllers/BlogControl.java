package packs.controllers;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import packs.model.Register;
import packs.services.RegisterServices;

@Controller
public class BlogControl {
	@Autowired
	RegisterServices rs;
	Register r;
	@Autowired
	JavaMailSender mail = null;
	@RequestMapping("/")
	public String rootPage()
	{
		return "index";
	}
	@RequestMapping("/addNewMemeber")
	public String signUp()
	{
		return "SignUp";
	}
	@ModelAttribute("addMem")
	public Register makeMember()
	{
		return new Register();
	}
	@RequestMapping(value="/SignUp",method=RequestMethod.POST)
	public ModelAndView putNewMember(@Valid @ModelAttribute("addMem")Register mem,HttpServletRequest request,BindingResult result )
	{
		
		if(result.hasErrors())
		{
			return new ModelAndView("addNewMember","",null);
		}
		
		String to=mem.getEmail();
		String sub="Greetings from Aradhana";
		String message="Welcome ! "+mem.getName()+" You are registered ";
		SimpleMailMessage email=new SimpleMailMessage();
		email.setTo(to);
		email.setSubject(sub);
		email.setText(message);
		mail.send(email);
		
		int x=rs.addNewMember(mem);
		System.out.println(x);
		return new ModelAndView("successful","ops",null);
	}
	
	
	@RequestMapping("/Login")
	public String login()
	
	{
		return "Login";
	}
	
	@ModelAttribute("loginMem")
	public Register loginMember()
	{
		return new Register();
	}
	@RequestMapping(value="/Login",method=RequestMethod.POST)
	public ModelAndView loginNewMember(@ModelAttribute("loginMem")Register member,HttpServletRequest request,BindingResult result )
	{
		return new ModelAndView("SignIn","ops",null);
	}
	
	
	@RequestMapping("/SignIn")
	public String signIn()
	{
		return "SignIn";
	}
	@RequestMapping("/writeBlog")
	public String writeBlog()
	{
		return "writeBlog";
	}
	@RequestMapping("/readBlog")
	public String readBlog()
	{
		return "readBlog";
	}
	@RequestMapping("/profile")
	public String profile()
	{
		return "profile";
	}
	@RequestMapping("/friends")
	public String friends()
	{
		return "friends";
	}
	@RequestMapping("/logout")
	public String logout()
	{
		return "logout";
	}
	
	
}
