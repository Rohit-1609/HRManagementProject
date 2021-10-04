package com.hrmanagement.controller;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.hrmanagement.dao.EmployeeDao;
import com.hrmanagement.model.Employee;

@Controller
public class EmployeeController 
{
	@Autowired
	private EmployeeDao employeeDao;

	@RequestMapping("/")
	public String home() {
		return "index";

	}

	@RequestMapping("/admin")
	public String home1(Model m) {
		List<Employee> employees = employeeDao.getAllEmployees();

		for (Employee employee : employees) {
			System.out.println(employee);
		}
		m.addAttribute("employee", employees);
		return "admin";

	}

	@RequestMapping("/register")
	public String register() {

		return "register";
	}

	@RequestMapping(value = "/register_process", method = RequestMethod.POST)
	public String handleRegisterterForm(@ModelAttribute Employee employee, HttpServletRequest request, Model model) {

		// if (br.hasErrors())
		// return "registration_page"; //it returns the error messages to the same page

		System.out.println(employee);
		employeeDao.createEmployee(employee);
		model.addAttribute("Message", employee.getFullName() + " Succefully Registered");
		
		return "redirect:/";

		
		

		

	}

	// for the login handle

	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public String validateUsr(@RequestParam("email") String email,
			@RequestParam("password") String password, HttpServletRequest request,Model model) {

		boolean isValid = employeeDao.checkEmployeeAvailability(email, password);
		if (isValid) {
			String checkRole = employeeDao.getEmployeeRole(email);

			if (checkRole.equalsIgnoreCase("Admin")) {
				System.out.println("Admin user");
				
				return "redirect:/admin";

			} else if (checkRole.equalsIgnoreCase("Employee")) {
				System.out.println("normal Employee");

				Employee employee= employeeDao.getEmployeeByEmail(email);


				model.addAttribute("employee", employee);


				return "employee";

			}


		} else {

			model.addAttribute("Message", "   Username or Password is Invalid");

		}
		System.out.println(email);
		System.out.println(password);
		return "redirect:/";


	}
	// delete handler
		@RequestMapping("/delete/{id}")
		public RedirectView deleteProduct(@PathVariable("id") int id, HttpServletRequest request) {
			this.employeeDao.deleteEmployee(id);
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath() + "/admin");
			return redirectView;
		}

		//// update
		@RequestMapping("/update/{employeeId}")
		public String updateForm(@PathVariable("employeeId") int employeeId, Model model) {
			Employee employee = this.employeeDao.getEmployee(employeeId);
			model.addAttribute("employee", employee);
			return "update";
		}

		//// update process
		@RequestMapping(value = "/updateprocess", method = RequestMethod.POST)
		public RedirectView updateUsers(@ModelAttribute Employee employee, HttpServletRequest request, Model model) {
		employeeDao.updateEmployee(employee);

			RedirectView redirectView = new RedirectView();

			redirectView.setUrl(request.getContextPath() + "/admin");
			model.addAttribute("Message", employee.getFullName());

			return redirectView;
		}

		
		
	////normal user process
		@RequestMapping(value = "/normalEmployee", method = RequestMethod.POST)
		public RedirectView Employee(@ModelAttribute Employee employee, HttpServletRequest request, Model model) {
			employeeDao.updateEmployee(employee);

			RedirectView redirectView = new RedirectView();

			redirectView.setUrl(request.getContextPath() + "/");
			model.addAttribute("Message", employee.getFullName());

			return redirectView;
		}
		
		// for searching user
		@RequestMapping("/searchEmployee")
		public String searchEmployee() {

			return "searchIndex";
		}

		// searching process
		@RequestMapping(value = "/search", method = RequestMethod.POST)
		public String searchEmployee(@RequestParam("fullName") String fullName, Model model) 
		{   System.out.println(fullName);
			Employee employee = employeeDao.searchEmployee(fullName);
			model.addAttribute("employee",employee);
			return "searchview";

		}
	//// forgot password
		@RequestMapping("/passwordchange")
		public String updatePassword(Model model) {

			return "forgotpassowrd";
		}

		// request hadle for change password
		@RequestMapping(path = "/forgotPassword", method = RequestMethod.POST)
		public String forgotPassword(@RequestParam("email") String field, @RequestParam("forgotAnswer") String value,
				Model m) {
		
			String password;
			password = employeeDao.getForgotPassword(field, value);
		
			return "index";
		}



}
