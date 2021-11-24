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

import com.cov.beans.Department;
import com.cov.beans.Employee;
import com.cov.repository.DepartmentRepository;
import com.cov.repository.EmployeeRepository;


@TestInstance(Lifecycle.PER_CLASS)
class DepartmentServiceTest {
	
	@InjectMocks
	DepartmentService departmentService;
	
	@Mock
	DepartmentRepository departmentRepository;
	
	@BeforeAll
	public void init() {
		MockitoAnnotations.initMocks(this);
		List<Department> department = new ArrayList<>();
		department.add(new Department(1,"sales"));
		department.add(new Department(2,"production"));
		department.add(new Department(3,"HR"));
		List<Department> departmentList = departmentService.findAll();
		when(departmentRepository.findAll()).thenReturn(department);

	}
		
	@Test
	void testFindAll1() {

		List<Department> departmentList = departmentService.findAll();
		assertNotNull(departmentList);
		assertEquals(3, departmentList.size());

	}

	@Test
	void testFindById1() {
		Department departmentExisting = new Department(2,"production");
		when(departmentRepository.findById(2)).thenReturn(Optional.of(departmentExisting));

		Department department = departmentRepository.findById(2).get();
		assertNotNull(department);
		assertSame(department.getName(), "production");
		assertEquals(department.getId(), 2);
	}

	@Test
	void testSave1() {
		Department department = new Department(4,"Designing");
		when(departmentRepository.save(department)).thenReturn(department);

		assertNotNull(department);

	}

	@Test
	void testUpdate1() {
		Department department = new Department(3,"Designing");
		when(departmentRepository.save(department)).thenReturn(department);

		Department department1 = departmentRepository.save(department);
		assertNotNull(department1);
		assertSame(department1.getName(), "Designing");

	}
		
}
