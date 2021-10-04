package com.hrmanagement.dao;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.hrmanagement.model.Employee;

@Component
public interface EmployeeDao 
{
	@Transactional
	public void createEmployee(Employee employee);
	
	public Employee getEmployee(int employeeId);

	public List<Employee> getAllEmployees();
	
	public boolean checkEmployeeAvailability(String email, String password);
	
	public String getEmployeeRole(String email);
	
	public Employee getEmployeeByEmail(String email);
	
	public void deleteEmployee(int id);
	public void updateEmployee(Employee employee);
	public Employee searchEmployee(String fullName);
	public String getForgotPassword(int value);

	public String getForgotPassword(String field, String value);


}
