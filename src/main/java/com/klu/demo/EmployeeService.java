package com.klu.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService 
{
	@Autowired
EmployeeRepository emprepository;
public void addemployeerecord(Employee emp)
{
		emprepository.save(emp);
}
public List<Employee>getallemployeerecords()
{
	return (List<Employee>)emprepository.findAll();
}

public Employee find(String healthissues) {
  return emprepository.checkHealthIssue(healthissues);
}

public Employee find1(String healthissues) {
	  return emprepository.checkHealthIssue1(healthissues);
	}
}
