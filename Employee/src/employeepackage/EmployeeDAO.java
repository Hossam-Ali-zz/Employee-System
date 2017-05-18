package employeepackage;

import java.util.List;

public interface EmployeeDAO {

	public void delete(int id);

	public void insert(Employee E);

	public List<Employee> select();

	public void update(Employee E);

	Employee findById(int id);
}
