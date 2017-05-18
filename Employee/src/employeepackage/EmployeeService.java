package employeepackage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("employeeService")
public class EmployeeService {
	@Autowired
	private EmployeeDAO employeeDAO;

	public void updateEmployee(Employee E) {
		employeeDAO.update(E);
	}

	public Employee findById(int id) {
		return employeeDAO.findById(id);
	}

	public void deleteEmployee(int E) {
		employeeDAO.delete(E);
	}

	public void insertEmployee(Employee E) {
		employeeDAO.insert(E);
	}

	public List<Employee> selectEmployee() {
		return employeeDAO.select();
	}
}
