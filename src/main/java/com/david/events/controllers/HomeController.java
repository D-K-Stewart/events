package com.david.events.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.david.events.models.Event;
import com.david.events.models.LoginUser;
import com.david.events.models.User;
import com.david.events.services.EventService;
import com.david.events.services.UserService;
    
@Controller
public class HomeController {
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private EventService eventService;
    
    
    @RequestMapping("/")
    public String home(Model model) {
    	model.addAttribute("newUser", new User());
    	model.addAttribute("newLogin", new LoginUser());
    	return "index.jsp";
    }
    
//    //all books
//    @RequestMapping("/index")
//    public String index(Model model, HttpSession session) {
//        
//    	model.addAttribute("allBooks", bookService.allBooks());
//        model.addAttribute("user", userService.findOne((Long)session.getAttribute("user_id")));
//        return "index.jsp";
//    }
    
    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, 
            BindingResult result, Model model, HttpSession session) {
        userService.register(newUser, result);
        if(result.hasErrors()) {
            model.addAttribute("newLogin", new LoginUser());
            return "index.jsp";
        }
        session.setAttribute("user_id", newUser.getId());
        return "redirect:/";
    }
    
    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
            BindingResult result, Model model, HttpSession session) {
        User user = userService.login(newLogin, result);
        if(result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "index.jsp";
        }
        session.setAttribute("user_id", user.getId());
        return "redirect:/dashboard";
        
    }
    
    @GetMapping("/dashboard")
    public String home(@ModelAttribute("eventS") Event event, HttpSession session, Model model) {
    	Long user_id = (Long) session.getAttribute("user_id");
    	if(user_id == null) {
    		return "redirect:/loginreg";
    	}
    	else {
    		User user = userService.findOne(user_id);
    		System.out.println(user);
    		model.addAttribute("name", user.getFirstName());
    		List<Event> events = eventService.allEvents();
        	model.addAttribute("events", events);
    		return "dashboard.jsp";
    	}
    }
    
//    }
    
//    @GetMapping("/sh")
//    public String show(Model model, HttpSession session) {
//    	if (session.isNew() || session.getAttribute("user_id") == null) {
//    		return "redirect:/";
//    	}
//    	User loggedInUser = this.userServ.findOne((Long) session.getAttribute("user_id"));
//    	model.addAttribute("loggedInUser", loggedInUser);
//    	return "show.jsp";
//    }
    
    //new book show
    @RequestMapping("/newEvent")
    public String newEvent(@ModelAttribute("event")Event event, Model model, HttpSession session) {
    	Long user_id = (Long)session.getAttribute("user_id");
    	if(user_id == null) {
    		return "redirect:/events";
    	}
    	model.addAttribute("user", user_id);
    	return "new.jsp";
    }

    
//    //create new book
	@RequestMapping(value="/createEvent", method=RequestMethod.POST)
	public String CreatedBy(@Valid @ModelAttribute("eventS") Event event, BindingResult result, HttpSession session, Model model) {
		model.addAttribute("users", userService.allUsers());
		Long user_id = (Long)session.getAttribute("user_id");
    	if(user_id == null) {
    		return "redirect:/events";
    	}
    	
    	else if(result.hasErrors()) {
    		User user = userService.findOne(user_id);
    		model.addAttribute("name", user.getFirstName());
    		List<Event> events = eventService.allEvents();
        	model.addAttribute("events", events);
        	
			return "dashboard.jsp";
			
		}
    	else {
			eventService.create(event);
			return "redirect:/dashboard";
		}
	}
    	

    
    @RequestMapping(value="/editedEvent/{id}", method=RequestMethod.PUT)
    public String editevent(@Valid @ModelAttribute("event") Event event, BindingResult result, Model model) {
    	if(result.hasErrors()) {
    		return "edit.jsp";
    	}else {
    		eventService.update(event);
    		return "redirect:/dashboard";
    	}
    }
    
    @RequestMapping(value="/editEvent/{id}")
    public String editevent(@PathVariable("id") Long id, @ModelAttribute("event")Event event, Model model, HttpSession session) {
    	Event oneEvent = eventService.oneEvent(id);
    	model.addAttribute("event", oneEvent);
//    	Long user_id = (Long)session.getAttribute("user_id");
//    	model.addAttribute("user", user_id);
    		return "edit.jsp";
    	}
 
    
    //show one book
    @RequestMapping("/oneEvent/{id}")
    public String oneEvent(@PathVariable("id") Long id, Model model, HttpSession session) {
    	User user = userService.findOne((Long) session.getAttribute("user_id"));
    	
    			model.addAttribute("user", user);
    			model.addAttribute("event", eventService.oneEvent(id));
    			return "show.jsp";
    			}
    
    
    //logout
    @GetMapping("/logout")
    public String logout(HttpSession session) {
    	session.invalidate();
    	return "redirect:/";
    }
    
    //delete book
    @RequestMapping("/delete/{id}")
    public String destroy(@PathVariable("id") Long id) {
    	eventService.destroy(id);
    	return "redirect:/dashboard";
    }
    
}