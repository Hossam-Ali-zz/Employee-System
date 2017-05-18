package employeepackage;

import java.io.Serializable;

public class emailInfo implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String empName;
	private String empDepartment;
	private boolean newReceiver;
	private String emailMessage;
	private static String emailNames = null;
	private static Integer count = 0;

	public String getEmailMessage() {
		return emailMessage;
	}

	public static String getEmailNames() {
		return emailNames;
	}

	public static void setEmailNames(String emailNames) {
		emailInfo.emailNames = emailNames;
	}

	public static Integer getCount() {
		return count;
	}

	public static void setCount(Integer count) {
		emailInfo.count = count;
	}

	public void setEmailMessage(String emailMessage) {
		this.emailMessage = emailMessage;
	}

	public String getEmpName() {
		return empName;
	}

	public boolean isNewReceiver() {
		return newReceiver;
	}

	public void setNewReceiver(boolean newReceiver) {
		this.newReceiver = newReceiver;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpDepartment() {
		return empDepartment;
	}

	public void setEmpDepartment(String empDepartment) {
		this.empDepartment = empDepartment;
	}

}
