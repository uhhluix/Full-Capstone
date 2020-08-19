package com.invent.app.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.invent.app.Users;
import com.invent.app.repository.UserRepository;
@SessionAttributes("loggedInuser")
@Controller
public class AppController {


		@Autowired
		private UserRepository userRepository;
		
		@GetMapping({"/","index"})
		String index(Model model) {
			model.addAttribute("msg","Welcome to spring mvc");
			model.addAttribute("page","page");
			return "index";
		}
		
		@GetMapping("users")
		@ResponseBody
		List<Users> allusers(){
			return userRepository.findAll();
		}
		
		@PostMapping("editrole")
		String editrole(@RequestParam String role, @RequestParam Long id, RedirectAttributes red ) {
		
			try {
				userRepository.findById(id).ifPresent(a->{
					a.setRole(role);
					userRepository.save(a);
					red.addFlashAttribute("msg", "role assigned");
				});
			
			} catch (Exception e) {
				e.printStackTrace();
			}	return "redirect:/customers";
		}
		
		@PostMapping("search")
		String search(@RequestParam String keyword, Model model ) {
		
			try {
				userRepository.findByName(keyword);
				model.addAttribute("list", userRepository.findByName(keyword));
			
			} catch (Exception e) {
				e.printStackTrace();
			}	return "customers";
		}
		
		
		@GetMapping({"contact"})
		String cont(Model model) {
			model.addAttribute("msg","contact page");
			
			return "contact";
		}
		
		@GetMapping({"login"})
		String login(Model model) {
			model.addAttribute("msg","login page");
			return "login";
		}
		
		@GetMapping({"signup"})
		String signUp(Model model) {
			model.addAttribute("msg","Register");
			model.addAttribute("user", new Users());
			return "profile";
		}
		@GetMapping("profile")
		String profile(@SessionAttribute("loggedInUser") Users user, Model model) {
			model.addAttribute("user", userRepository.findByEmail(user.getEmail()));
			model.addAttribute("msg","profile page");
			return "profile";
		}
		
		@GetMapping({"logout"})
		String logOut(HttpSession session, SessionStatus status, Model model) {
			session.invalidate();
			status.setComplete();
			model.addAttribute("loggedInUser","");
			model.addAttribute("msg","logged out");
			return "login";
		}
		
		@GetMapping({"about"})
		String about(Model model) {
			model.addAttribute("msg","about page");
			return "about";
		}
		
		@GetMapping("getstate")
		String state(@RequestParam String state, Model model) {
			model.addAttribute("msg", "state");
			return "signUp";
		}
		
		@PostMapping({"login"})
		String login(@RequestParam String email, @RequestParam String password, 
				Model model, RedirectAttributes redirect) {
			
			Optional<Users> findUser = userRepository.login(email, password);
			if(findUser.isPresent()) {
				
				model.addAttribute("role", findUser.get().getRole());
				model.addAttribute("loggedInUser", findUser.get().getEmail());
				redirect.addFlashAttribute("msg"," login works "+ email +" "+password);

			}else {
				redirect.addFlashAttribute("error", "Invalid Credentials ");
				return "redirect:/login";
			}
			return "redirect:/profile";
		}
		
		@PostMapping("signup")
		String signUp(RedirectAttributes red, 
				@RequestParam String firstName,
				@RequestParam String lastName, 
				@RequestParam String email,
				@RequestParam String password) {
			
			Users user = new Users();
			user.setFname(firstName);
			user.setLname(lastName);
			user.setEmail(email);
			user.setPassword(password);
			userRepository.save(user);
			
			red.addFlashAttribute("success", " it works. " + email+" " +password);
			
			return "redirect:/profile";
		}
		
		@PostMapping("register")
		String register(RedirectAttributes redirect, @ModelAttribute Users user, Model model) {
			
			user.setRole("USER");
			
			userRepository.save(user);
			
			redirect.addFlashAttribute("success", " firstName: " + user.getFname()+" lastName:" +user.getLname());
			model.addAttribute("loggedInUser", user);
			return "redirect:/profile";
		}
		
		@GetMapping("customers")
		String users(Model model) {
			model.addAttribute("msg","All Users");
			model.addAttribute("list", userRepository.findAll());
			return "users";
		}
		
		@GetMapping({"delete"})
		String delete(@RequestParam Long id,RedirectAttributes model) {
			userRepository.deleteById(id);
			model.addAttribute("msg","delete success");
			return "redirect:/customers";
		}
		
		


	}
