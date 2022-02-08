package com.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.EmployeeModel;

import com.example.repository.EmployeeRepository;

@Controller
public class employeeController {

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@GetMapping("/")
	public ModelAndView index() {
		Map<String, Object> map = new HashMap<String, Object>();
		List<EmployeeModel> emplist = (List<EmployeeModel>) employeeRepository.findAll();
		map.put("emplist", emplist);
		return new ModelAndView("index", "data", map);
 	}
	
	
	@GetMapping("/create")
	public ModelAndView create() {
		Map<String, Object> map = new HashMap<String, Object>();
		return new ModelAndView("create_employee", "data", map);
 	}
	
	
	
	@PostMapping("/employee_save")
	public ModelAndView save(@ModelAttribute EmployeeModel employeeModel, HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			employeeModel = employeeRepository.save(employeeModel);
			map.put("employee", employeeModel);
			map.put("status", "Success");
			map.put("message", "Data saved successfully");
		} catch (Exception e) {
			map.put("status", "Failed");
			map.put("message", e.getLocalizedMessage());
		}
		return new ModelAndView("create_employee", "data", map);
	}
	
	
	@GetMapping("/employee_edit/{id}")
	public ModelAndView Edit(@PathVariable(value = "id") long id) {
		Map<String, Object> map = new HashMap<String, Object>();
		EmployeeModel employee =  employeeRepository.findById(id).get();
		map.put("employee", employee);
		return new ModelAndView("update_employee", "data", map);
	}
	
	
	@PostMapping("/product_update")
	public ModelAndView update(@ModelAttribute EmployeeModel employeeModel, HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			employeeModel = employeeRepository.save(employeeModel);
			map.put("product", employeeModel);
			map.put("status", "Success");
			map.put("message", "Data updated successfully");
		} catch (Exception e) {
			map.put("status", "Failed");
			map.put("message", e.getLocalizedMessage());
		}
		return new ModelAndView("update_employee", "data", map);
	}
	
	

	@GetMapping("/employee_delete/{id}")
	public ModelAndView delete(@PathVariable(value = "id") long id) {
		Map<String, Object> map = new HashMap<String, Object>();
		EmployeeModel employee =  employeeRepository.findById(id).get();
		employeeRepository.delete(employee);
		
		return new ModelAndView("redirect:/");
	}
	
	
	
	
	
		
}
