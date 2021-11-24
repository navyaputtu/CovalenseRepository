package com.cov.service;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestInstance.Lifecycle;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.cov.beans.Employee;
import com.cov.repository.EmployeeRepository;


@TestInstance(Lifecycle.PER_CLASS)
class EmployeeServiceTest {
	
	@InjectMocks
	EmployeeService employeeService;
	
	@Mock
	EmployeeRepository employeeRepository;
	
	@BeforeAll
	public void init() {
		MockitoAnnotations.initMocks(this);
		List<Employee> employee = new ArrayList<>();
		employee.add(new Employee(1, "navya", "sales"));
		employee.add(new Employee(2, "sai", "production"));
		employee.add(new Employee(3, "vishnu", "HR"));
		List<Employee> employeeList = employeeService.findAll();
		when(employeeRepository.findAll()).thenReturn(employee);

	}
		
	@Test
	void testFindAll() {

		List<Employee> employeeList = employeeService.findAll();
		assertNotNull(employeeList);
		assertEquals(3, employeeList.size());

	}

	@Test
	void testFindById() {
		Employee employeeExisting = new Employee(2, "sai", "production");
		when(employeeRepository.findById(2)).thenReturn(Optional.of(employeeExisting));

		Employee employee = employeeRepository.findById(2).get();
		assertNotNull(employee);
		//assertSame(employee.getName(), "sai");
		//assertEquals(employee.getId(), 2);
	}

	@Test
	void testSave() {
		Employee employee = new Employee(4, "latha", "Designing");
		when(employeeRepository.save(employee)).thenReturn(employee);

		assertNotNull(employee);

	}

	@Test
	void testUpdate() {
		Employee employee = new Employee(3, "vishnu", "Hr");
		when(employeeRepository.save(employee)).thenReturn(employee);

		Employee employee1 = employeeRepository.save(employee);
		assertNotNull(employee1);
		//assertSame(employee1.getName(), "vishnu");

	}
		
}
