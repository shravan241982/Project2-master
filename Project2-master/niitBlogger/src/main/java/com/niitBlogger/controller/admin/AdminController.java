package com.niitBlogger.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niitBlogger.model.Contact;
import com.niitBlogger.model.Post;
import com.niitBlogger.model.User;
import com.niitBlogger.service.ContactService;
import com.niitBlogger.service.PostService;
import com.niitBlogger.service.RolesService;
import com.niitBlogger.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
    private UserService userService;
    @Autowired
    private PostService postService;
    
    @Autowired
    ContactService contactService;
     
    @RequestMapping
    public String adminPage(ModelMap model){
	   int user=0,post=0,contact=0;
    	List<User> users=userService.getAllUsers();
    	for(Object obj : users)
    	{
    		user++;
    	}
    	model.addAttribute("uCount", user);
    	List<Post> posts=postService.getAllPosts();
    	for(Object obj : posts)
    	{
    		post++;
    	}
    	model.addAttribute("pCount", post);
    	List<Contact> contscts=contactService.getAllMessages();
    	
    	for(Object obj : contscts)
    	{
    		contact++;
    	}
    	model.addAttribute("cCount", contact);
        return "admin";
    }

}
