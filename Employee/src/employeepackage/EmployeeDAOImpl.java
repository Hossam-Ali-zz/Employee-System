package employeepackage;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("employeeDAO")
@Transactional
public class EmployeeDAOImpl extends HibernateDaoSupport implements EmployeeDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public EmployeeDAOImpl(SessionFactory sessionfactory) {
		setSessionFactory(sessionfactory);
	}

	@Override
	public void update(Employee e) {
		Session session = sessionFactory.getCurrentSession();
		session.update(e);
	}

	@Override
	public void delete(int id) {
		Session session = sessionFactory.getCurrentSession();
		Employee employee = (Employee) session.get(Employee.class, id);
		session.delete(employee);
	}

	@Override
	public void insert(Employee e) {
		sessionFactory.getCurrentSession().save(e);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Employee> select() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Employee.class);
		return criteria.list();
	}

	@Override
	public Employee findById(int id) {
		return (Employee) sessionFactory.getCurrentSession().get(Employee.class, id);
	}
}
