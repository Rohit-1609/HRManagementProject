package com.hrmanagement.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.hrmanagement.model.Employee;

@Repository("EmployeeDao")
public class EmployeeDaoImpl implements EmployeeDao
{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Autowired
	private SessionFactory factory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.hibernateTemplate = new HibernateTemplate(sessionFactory);
	}

	// create
	@Transactional
	public void createEmployee(Employee employee) {

		this.hibernateTemplate.save(employee);
	}
	
	//get single data
		public Employee getEmployee(int employeeId) {
			return this.hibernateTemplate.get(Employee.class, employeeId);
		}

		// get all users

		public List<Employee> getAllEmployees() {
			List<Employee> employees = this.hibernateTemplate.loadAll(Employee.class);
			return employees;
		}
		
		// user verified from database
		@Transactional
		public boolean checkEmployeeAvailability(String email, String password) {
			boolean isValidEmployee = false;

			Session currentSession = factory.getCurrentSession();
			String query = "FROM Employee e WHERE e.email=:email";
			Employee employee= (Employee) currentSession.createQuery(query).setParameter("email", email).uniqueResult();
			if (employee != null && employee.getPassword().equals(password)) {
				isValidEmployee = true;
			}

			else {
				isValidEmployee = false;
			}
			return isValidEmployee;
		}
		
		// getting user role from db
		@Transactional
		public String getEmployeeRole(String email) {
			String employeeRole;
			Session currentSession = factory.getCurrentSession();
			String query = "FROM Employee e WHERE e.email=:email";
			Employee employee = (Employee) currentSession.createQuery(query).setParameter("email", email).uniqueResult();
			employeeRole = employee.getRole();
			return employeeRole;

		}
		//searching user
		@Transactional
		public Employee getEmployeeByEmail(String email) {
			Session currentSession = factory.getCurrentSession();
			String query = "FROM Employee e WHERE e.email = :email";

			Employee employee= (Employee) currentSession.createQuery(query).setParameter("email", email).uniqueResult();
			return employee;
		}
		
		// delete single user
		@Transactional
		public void deleteEmployee(int id) {
			Employee employee = this.hibernateTemplate.load(Employee.class, id);
			this.hibernateTemplate.delete(employee);
		}
		
		// create
				@Transactional
				public void updateEmployee(Employee employee) {

					this.hibernateTemplate.update(employee);
				}
				
				
				//searching user
				@Transactional
				public Employee searchEmployee(String fullName)
				{
					// get the current hibernate session

					Session currentSession = factory.getCurrentSession();
					String query = "FROM Employee e WHERE e.fullName = :fullName";

					Employee employee = (Employee) currentSession.createQuery(query).setParameter("fullName", fullName).uniqueResult();
					return employee;
					
					
					
					
				}

				@Transactional
				public String getForgotPassword(int value) {
					String password;
					Session currentSession = factory.getCurrentSession();

					String query = "from Employee where id=:value";

					Query theQuery = currentSession.createQuery(query);

					theQuery.setParameter("value", value);

					Employee employee = (Employee) theQuery.uniqueResult();
					password = employee.getPassword();
					return password;
				}

				@Transactional
				 @Modifying
				 public String getForgotPassword(String field, String value) {
					Session session = factory.getCurrentSession();
					String password;
					Query q2 =session.createQuery("update Employee set password=:p where email=:e");
							 q2.setParameter("p",field );
							 q2.setParameter("e", value);
							 Employee employee = (Employee) q2.uniqueResult();
							 password = employee.getPassword();
							return password;
				}

}
