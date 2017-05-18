package employeepackage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class action {
	@Autowired
	private EmployeeService empserv;

	public EmployeeService getEmpserv() {
		return empserv;
	}

	public void setEmpserv(EmployeeService empserv) {
		this.empserv = empserv;
	}

	public List<Employee> selectUsers() {
		return empserv.selectEmployee();
	}

	public emailInfo fillEmailInfo(emailInfo email) {
		if (emailInfo.getCount() == 0)
			emailInfo.setEmailNames(email.getEmpName());
		String name = emailInfo.getEmailNames();
		if (emailInfo.getCount() > 0) {
			name += ",";
			name += email.getEmpName();
		}
		emailInfo.setEmailNames(name);
		emailInfo.setCount(1);
		return email;
	}

	public String printAllNames(emailInfo email) {
		return email.getEmailMessage();
	}

	public boolean isChecked(emailInfo email) {
		return email.isNewReceiver();
	}
}
