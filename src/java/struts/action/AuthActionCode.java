package struts.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import static com.opensymphony.xwork2.Action.SUCCESS;
import eco.beans.Employee;
import eco.beans.Operator;
import java.util.List;
import org.hibernate.Criteria;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

public class AuthActionCode extends ActionSupport implements ModelDriven 
{
    Operator auth = new Operator();
    public AuthActionCode()
    {
    }
    
    @Override
    public Operator getModel()
    {
        return auth;  
    }
                
                
                
                public String authLogin() throws Exception 
                        {
                            SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
                            Session session=sessionFactory.openSession();
                            Transaction tx=session.beginTransaction();
                            Criteria crit=session.createCriteria(Operator.class);
                            crit.add(Restrictions.and(Restrictions.eq("id",auth.getId()),
                                    Restrictions.eq("password",auth.getPassword())));
                            List<Operator> list=crit.list();
                            if(list.isEmpty())
                                 return ERROR;
                            else
                                 return SUCCESS;
                         }
                
                
                
                public String authPass() throws Exception 
                        {
                            SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
                            Session session=sessionFactory.openSession();
                            Transaction tx=session.beginTransaction();
                            Criteria crit=session.createCriteria(Operator.class);
                            crit.add(Restrictions.and(Restrictions.eq("id",auth.getId()),
                                    Restrictions.eq("password",auth.getPassword())));
                            
                            List<Operator> list=crit.list();
                            if(list.isEmpty())
                            {
                                 return ERROR;
                            }
                            else
                            {
                                if(auth.getNpass().equals(auth.getCpass()))
                            {
                            
                            Operator us=(Operator)session.get(Operator.class,auth.getId());     
                            us.setPassword(auth.getNpass());
                            session.update(us);
                            tx.commit();
                            return SUCCESS;
                            }
    
                            }   
    
                            return SUCCESS;
                        }

    
    
}