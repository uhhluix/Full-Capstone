package com.invent.app.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.sql.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.invent.app.AddressBook;
import com.invent.app.Bugs;
import com.invent.app.PaymentMethod;
import com.invent.app.PhoneBook;
import com.invent.app.Users;
import com.invent.app.repository.AddressRepository;
import com.invent.app.repository.BugsRepository;
import com.invent.app.repository.PaymentMethodRepository;
import com.invent.app.repository.PhoneBookRepository;
import com.invent.app.repository.UserRepository;
import com.invent.app.service.BugService;
import com.invent.app.service.BugsServiceImpl;
import com.invent.app.service.UserService;
import com.invent.app.utils.DataValidation;
import com.invent.app.utils.States;
import com.invent.app.utils.WebUtils;

@Controller
@SessionAttributes({ "loggedInuser", "role" })
public class AppController {
	@Autowired
	ObjectMapper objectMapper;
	@Autowired
	private UserService userService;
	// private UserRepository userRepository;

	@Autowired
	private BugService bugService;

	@Autowired
	private BugsServiceImpl bugsServiceImpl;
	@Autowired
	private WebUtils webUtils;

	@Autowired
	private DataValidation dataValidation;

	@Autowired
	private PhoneBookRepository phoneBookRepository;

	@Autowired
	private AddressRepository addressRepository;

	@Autowired
	private PaymentMethodRepository paymentMethodRepository;

	@Autowired
	private BugsRepository bugsRepository;

	@GetMapping({"/", "index" })
	String index(Model model) throws IllegalStateException, IOException {
		// model.addAttribute("msg", "Welcome to spring mvc");
		model.addAttribute("page", "Home Page");
		model.addAttribute("loadBugs", bugsRepository.findAll());
		return "index";
	}

	@GetMapping("contact")
	String contact(Model model) {
		model.addAttribute("msg", "Contact Us");
		return "contact";

	}

	@GetMapping("about")
	String about(Model model) {
		model.addAttribute("msg", "This is about us page");
		return "about";

	}

	@GetMapping("login")
	String login(Model model) {
		model.addAttribute("msg", "Login");
		return "login";

	}

	@GetMapping("expired")
	String exp(Model model, SessionStatus status) {
		status.setComplete();
		model.addAttribute("loggedInuser", "");
		model.addAttribute("role", "");
		model.addAttribute("expired", "You have been logged out due to inactivity");

		return "login";

	}

	@GetMapping("getstate")
	String state(@RequestParam String state, Model model) {

		model.addAttribute("msg", state);

		return "signup";

	}

	@GetMapping("message-{msg}")
	String message(@PathVariable String msg, Model model) {

		model.addAttribute("msg", msg);

		return "index";

	}

	@PostMapping("login")
	String login(@RequestParam String email, @RequestParam String password, Model model, RedirectAttributes redirect) {

		Optional<Users> findUser = userService.login(email, password);
		if (findUser.isPresent()) {
			model.addAttribute("role", findUser.get().getRole());
			model.addAttribute("loggedInuser", findUser.get().getEmail());
			redirect.addFlashAttribute("msg", " Login Success  " + email);

		} else {
			redirect.addFlashAttribute("error", "Invalid Credentials  ");
			return "redirect:/login";
		}

		return "redirect:/profile";
	}

	@GetMapping("signup")
	String signUp(Model model) {
		model.addAttribute("user", new Users());
		return "signup";

	}

	@PostMapping("register")
	String register(@ModelAttribute("user") Users user, BindingResult result, RedirectAttributes redirect,
			Model model) {

		try {
			dataValidation.validate(user, result);
			if (result.hasErrors()) {
				return "signup";
			}

			user.setRole("USER");
			userService.save(user);
			model.addAttribute("role", user.getRole());
			model.addAttribute("loggedInuser", user.getEmail());
			redirect.addFlashAttribute("msg", "Registration success");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/profile";
	}

	@GetMapping("profile")
	String profile(@SessionAttribute("loggedInuser") String email, Model model) {

		try {
			model.addAttribute("user_account", userService.findByEmail(email).get());
			model.addAttribute("msg", "Welcome");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			// e.printStackTrace();
		}

		return "profile";

	}

	@GetMapping("logout")
	String logout(HttpSession session, SessionStatus status, Model model) {
		status.setComplete();
		// session.invalidate();
		model.addAttribute("loggedInuser", "");
		model.addAttribute("role", "");
		model.addAttribute("success", "You have been logged out");
		return "login";

	}

	@GetMapping("delete")
	String delete(@RequestParam Long id, RedirectAttributes model) {
		try {
			userService.delete(id);
			webUtils.deletefolder(5);
			model.addFlashAttribute("success", "Delete Success");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/customers";

	}

	@GetMapping("customers")
	String users(Model model) {
		model.addAttribute("msg", "Users");
		model.addAttribute("list", userService.findAll());

		return "users";

	}

	@PostMapping("search")
	String search(Model model, @RequestParam String keyword) {
		try {
			model.addAttribute("list", userService.findByName(keyword));
			model.addAttribute("msg", "results found for " + keyword);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "users";

	}

	@PostMapping("editrole")
	String editrole(@RequestParam String role, @RequestParam Long id, RedirectAttributes red) {

		try {
			userService.updateRole(role, id);
			red.addFlashAttribute("msg", "Role asigned");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/customers";

	}

	@PostMapping("addcard")
	String addcard(@ModelAttribute PaymentMethod payment, RedirectAttributes red) {

		try {
			Users user = userService.findById(payment.getId()).get();
			payment.setUser(user);
			paymentMethodRepository.save(payment);
			red.addFlashAttribute("msg", "Card Added");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:profile";

	}

	@PostMapping("/addimages")
	public String addprofileImg(@RequestParam("file") MultipartFile file, @RequestParam Long id,
			RedirectAttributes model) {

		Pattern ext = Pattern.compile("([^\\s]+(\\.(?i)(png|jpg|pdf|gif))$)");
		try {

			if (file != null && file.isEmpty()) {
				model.addFlashAttribute("error", "Error No file Selected ");
				return "redirect:profile";
			}
			if (file.getSize() > 1073741824) {
				model.addFlashAttribute("error",
						"File size " + file.getSize() + "KB excceds max allowed, try another photo ");
				return "redirect:profile";
			}
			Matcher mtch = ext.matcher(file.getOriginalFilename());

			if (!mtch.matches()) {
				model.addFlashAttribute("error", "Invalid Image type ");
				return "redirect:profile";
			}
			// save image
			webUtils.addProfilePhoto(file, id, "users");
			model.addFlashAttribute("msg", "Upload success " + file.getSize() + " KB");

		} catch (Exception e) {
			// e.printStackTrace);
		}
		return "redirect:profile";
	}

	@PostMapping("request-passord-reset")
	String resetpass(Model model, @RequestParam String email) {
		try {
			Optional<Users> findUser = userService.findByEmail(email);
			if (findUser.isPresent()) {
				Users usr = findUser.get();
				Random random = new Random();
				String token = String.format("%04d", random.nextInt(10000));
				usr.setToken(token);
				userService.save(usr);
				model.addAttribute("email", email);
				webUtils.sendMail(email, "Please use this token to reset your password " + token, "Password Reset");
			} else {
				model.addAttribute("error", "No user account found with " + email);
				return "login";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "resetpassword";
	}

	@PostMapping("resetpassword")
	String resetpassword(RedirectAttributes red, Model model, @RequestParam String email, @RequestParam String token,
			@RequestParam String password) {
		try {
			String passwordRegex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&+=])(?=\\S+$).{8,}$";

			if (!password.matches(passwordRegex)) {
				model.addAttribute("error",
						"Password should be at least 8 characters, lower case, upper case and a special character.");
				model.addAttribute("email", email);
				return "resetpassword";
			}
			Optional<Users> findUser = userService.findByEmail(email);
			if (findUser.isPresent() && token.equals(findUser.get().getToken())) {
				Users usr = findUser.get();
				usr.setToken("");
				usr.setPassword(password);
				userService.save(usr);
				model.addAttribute("role", usr.getRole());
				model.addAttribute("loggedInuser", usr.getEmail());
				red.addFlashAttribute("success",
						"Password reset success thanks, please contact admin if you did not perform this change");
				webUtils.sendMail(email,
						"Password reset success thanks, please contact admin if you did not perform this change",
						"Password Reset");
				return "redirect:profile";
			} else {
				model.addAttribute("error", "Invalid token");
				model.addAttribute("email", email);

			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "resetpassword";
	}

	@PostMapping("sendemail")
	String sendemail(Model model, @RequestParam String email, @RequestParam String name, @RequestParam String message,
			@RequestParam String subject) {
		try {
			webUtils.sendMail(email, message + " From " + name, subject);
			model.addAttribute("msg", "Thank you " + name + ". Email sent :) ");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "contact";
	}

	@GetMapping("deletecard")
	String deletecard(@RequestParam Long id) {
		paymentMethodRepository.deleteById(id);
		return "redirect:profile";
	}

	@GetMapping("deletephone")
	String deletephone(@RequestParam Long id) {
		phoneBookRepository.deleteById(id);
		return "redirect:profile";
	}

	@ModelAttribute("states")
	public List<States> populateStates() {
		return Arrays.asList(States.values());
	}

	@PostMapping("addphone")
	String addphone(@RequestParam Long id, @RequestParam String type, @RequestParam String tel, Model model) {

		try {
			PhoneBook book = new PhoneBook();
			Users user = userService.findById(id).get();
			book.setUser(user);
			book.setTel(tel);
			book.setType(type);
			phoneBookRepository.save(book);
			model.addAttribute("msg", "Phone Added");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:profile";

	}

	@ModelAttribute("update")
	Users update() {
		return new Users();
	}

	@PostMapping("updatecontact")
	String update(@ModelAttribute AddressBook addressess, Model model) {

		try {
			Users user = userService.findById(addressess.getId()).get();
			addressess.setUser(user);
			addressRepository.save(addressess);
			model.addAttribute("msg", "Update success");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:profile";

	}

	@PostMapping("updateuser")
	String updateuser(@ModelAttribute Users update, Model model) {

		try {
			userService.findById(update.getId()).ifPresent(user -> {
				user.setFname(update.getFname());
				user.setLname(update.getLname());
				// userRepository.save(user);
			});

			model.addAttribute("list", userService.findAll());

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "users";

	}

	@ModelAttribute("address")
	AddressBook address() {
		return new AddressBook();
	}

	@ModelAttribute("card")
	PaymentMethod pay() {
		return new PaymentMethod();
	}

	@PostMapping("submitBug")
	String submitBug(@RequestParam String title, @RequestParam String status, @RequestParam String bugSubmitter,
			@RequestParam String severity, @RequestParam String description) {

		Bugs bugs = new Bugs();
		bugs.setName(title);
		bugs.setSeverity(severity);
		bugs.setDescription(description);
		bugs.setBugSubmitter(bugSubmitter);
		bugs.setStatus(status);
		bugs.getId();
		bugsRepository.save(bugs);

		return "redirect:index";
	}

	@GetMapping("deleteBug/{id}")
	String deleteBug(@PathVariable("id") Long id) {
		bugsRepository.deleteById(id);
		return "redirect:/index";
	}
	
	
	@PostMapping("updateBug/{id}")
	String updateBug(@PathVariable("id") Long id, @RequestParam String status) {
		
		
		Optional<Bugs> bugToUpdate = bugsRepository.findById(id);
		if(bugToUpdate.isPresent()) {
		
		bugToUpdate.get().setStatus(status);
		
		bugService.updateBug(bugToUpdate.get());
		}
		return "redirect:/index";

	}
	
	@GetMapping({  "home" })
	String home(Model model) {
		model.addAttribute("role", "");
		return "home";

	}
}
