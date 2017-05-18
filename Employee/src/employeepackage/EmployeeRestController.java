package employeepackage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmployeeRestController {
	@Autowired
	private EmployeeService empserv;

	@RequestMapping(value = "/employees", method = RequestMethod.GET)
	public ResponseEntity<List<Employee>> getEmployee() {
		List<Employee> emp = empserv.selectEmployee();
		if (emp.isEmpty())
			return new ResponseEntity<List<Employee>>(HttpStatus.NO_CONTENT);
		return new ResponseEntity<List<Employee>>(emp, HttpStatus.OK);
	}

	@RequestMapping(value = "/employees/{id}", method = RequestMethod.GET)
	public ResponseEntity<Employee> getEmployees(@PathVariable("id") Integer id) {
		Employee emp = empserv.findById(id);
		if (emp == null) {
			return new ResponseEntity<Employee>(HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<Employee>(emp, HttpStatus.OK);
	}

	@RequestMapping(value = "/employees/add", method = RequestMethod.POST)
	public ResponseEntity<Employee> createUser(@RequestBody Employee emp) {
		empserv.insertEmployee(emp);
		return new ResponseEntity<Employee>(emp, HttpStatus.OK);
	}
}
