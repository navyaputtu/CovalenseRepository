package com.cov;

import java.util.ArrayList;
import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.cov.beans.Department;
import com.cov.beans.Employee;
import com.cov.service.DepartmentService;
import com.cov.service.EmployeeService;

@SpringBootApplication
public class SpringBootMvcForm1Application {

	public static void main(String[] args) {
		ConfigurableApplicationContext cntx = SpringApplication.run(SpringBootMvcForm1Application.class, args);
		Department department1 = new Department(1, "java");
		Department department2 = new Department(2, "c");
		Employee employee1 = new Employee(101, "Navya", department1);
		Employee employee2 = new Employee(102, "Pranavi", department1);
		Employee employee3 = new Employee(103, "Teju", department2);
		Employee employee4 = new Employee(104, "vamsi", department2);

		List<Employee> employees1 = new ArrayList<>();
		List<Employee> employees2 = new ArrayList<>();
		employees1.add(employee1);
		employees1.add(employee2);

		employees2.add(employee3);
		employees2.add(employee4);

		EmployeeService employeeService = cntx.getBean(EmployeeService.class);
		DepartmentService departmentService = cntx.getBean(DepartmentService.class);
		departmentService.save(department1);
		departmentService.save(department2);
		employeeService.save(employee1);
		employeeService.save(employee2);
		employeeService.save(employee3);
		employeeService.save(employee4);

	}

}