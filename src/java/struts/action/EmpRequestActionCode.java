package struts.action;


import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import eco.beans.EmpRequest;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class EmpRequestActionCode extends ActionSupport implements ModelDriven 
{
    EmpRequest request = new EmpRequest();
    public EmpRequestActionCode()
    {
    }
    
    @Override
    public EmpRequest getModel()
    {
        return request;  
    }
                @Override
                public String execute() throws Exception
                        {
                            SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
                            Session session=sessionFactory.openSession();
                            Transaction tx=session.beginTransaction();
                            session.save(request);
                            tx.commit();
                            session.close();
                            return SUCCESS;
                        }
}