package com.klu.demo;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface EmployeeRepository extends CrudRepository<Employee,Integer>
{
	@Query(value = "select c from Employee c where c.healthissues='bp'")
	  Employee checkHealthIssue(String healthissues);
	
	@Query(value = "select c from Employee c where c.healthissues='obese'")
	  Employee checkHealthIssue1(String healthissues);
}
