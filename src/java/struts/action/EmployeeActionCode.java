package struts.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import static com.opensymphony.xwork2.Action.SUCCESS;
import eco.beans.Employee;
import java.util.List;
import org.hibernate.Criteria;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

public class EmployeeActionCode extends ActionSupport implements ModelDriven 
{
    Employee employee = new Employee();
    public EmployeeActionCode()
    {
    }
    
    @Override
    public Employee getModel()
    {
        return employee;  
    }
                @Override
                public String execute() throws Exception
                        {
                            SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
                            Session session=sessionFactory.openSession();
                            Transaction tx=session.beginTransaction();
                            session.save(employee);
                            tx.commit();
                            session.close();
                            return SUCCESS;
                        }
                
                public String loginLogic() throws Exception 
                        {
                            SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
                            Session session=sessionFactory.openSession();
                            Transaction tx=session.beginTransaction();
                            Criteria crit=session.createCriteria(Employee.class);
                            crit.add(Restrictions.and(Restrictions.eq("id",employee.getId()),Restrictions.eq("password1",employee.getPassword1())));
                            List<Employee> list=crit.list();
                            if(list.isEmpty())
                                 return ERROR;
                            else
                                 return SUCCESS;
                         }
                
                
                
                          public String deleteLogic() throws Exception 
                          {
                                SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
                                Session session=sessionFactory.openSession();
                                Transaction tx=session.beginTransaction();
                                Criteria crit=session.createCriteria(Employee.class);
                                crit.add(Restrictions.and(Restrictions.eq("id",employee.getId()),
                                        Restrictions.eq("password1",employee.getPassword1())));

                                List<Employee> list=crit.list();
                                if(list.isEmpty())
                                {
                                    return ERROR;
                                }
                                else
                                {
                                    Employee us=(Employee)session.get(Employee.class,employee.getId());     
                                    session.delete(us);
                                    tx.commit();
                                    return SUCCESS;
                                }
    
                        } 

                
                
                
                public String changePass() throws Exception 
                        {
                            SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
                            Session session=sessionFactory.openSession();
                            Transaction tx=session.beginTransaction();
                            Criteria crit=session.createCriteria(Employee.class);
                            crit.add(Restrictions.and(Restrictions.eq("id",employee.getId()),
                                    Restrictions.eq("password1",employee.getPassword1())));
                            
                            List<Employee> list=crit.list();
                            if(list.isEmpty())
                            {
                                 return ERROR;
                            }
                            else
                            {
                                if(employee.getNpass().equals(employee.getCpass()))
                                {
                            
                                    Employee us=(Employee)session.get(Employee.class,employee.getId());     
                                    us.setPassword1(employee.getNpass());
                                    session.update(us);
                                    tx.commit();
                                    return SUCCESS;
                                }
    
                            }   
    
                            return SUCCESS;
                        }
         
    



    
    
}