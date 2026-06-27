<%@page import="eco.beans.Employee,java.util.List,org.hibernate.Criteria,org.hibernate.Session,org.hibernate.SessionFactory,org.hibernate.Transaction,org.hibernate.cfg.Configuration"%>

<%@taglib  prefix="struts"  uri="/struts-tags"%>
<%@taglib  prefix="dojo"  uri="/struts-dojo-tags"%>








<html>
    <style>
        body
        {
          background-image:url('images2/showacc.gif'); 
          background-repeat:no-repeat;
          background-size:100%;
        }
        .tabtheme{
            font-size: 25px;
            font-family: arial;
            height: 60px;
            width: 60%;
            margin-top:20px;
            margin-left: 285px;
            color: #5e6b71;
            border-radius: 40px;
            position: relative;
            animation: bankease 1s;
            background-color: #8FBCBB;
           
        }
        
        @keyframes bankease
        {
            from{top:-100}
            to{top:0}
        }
        
        .option
        {    
            font-size: 25px;
            margin-left:1250px;
            margin-top:-60px;
            border-radius: 40px;

            position: relative;
            animation: bankease4 1s;
        }
        @keyframes bankease4
        {
            from{top:-100%}
            to{top: 0%}
        }
        
        
        
    .box{
        color: #18312e;
        border-radius:40px;
        transition:transform  .5s; 
    }   
    .box:hover
    {
        color: #18312e;
        transform:scale(1.3);
    }
  
    a{
        color: white;
        text-decoration: none;
    }
    a:hover{
        color: #18312e;
    }
    
    .signuptheme
    {
        background-color: #4c9e92;
        color:white;
        transition:transform  .5s;
	font-size:20px;
        width: 10000px;
        height: 20px;
        border-radius: 40px;
    }
    .signuptheme:hover
    {

	background-color: black;	
        transform:scale(1.3);
    }
    .logintheme
    {
        background-color: #4c9e92;
        color:white;
        transition:transform  .5s;
	font-size:20px;
        border-radius: 40px;
        
    }
    .logintheme:hover
    {
        transform:scale(1.3);
	background-color: black;
        color:white;
    }
    
    .data
    {
        font-size:30px;
        margin-left: 500px;
        margin-top: 100px;
        color: white;
    }
    
    .frontdiv
    {
        background-color:rgba(0,0,0,0.1);
	width:100%;
	height:110%;
        position: absolute;
    }
    .quote
    {
        color: white;
        margin-left: 325px;
        margin-top: 50px;
        font-size: 20px;
    }
    
    .services
{
	width:100%;
	height:50px;
        position: relative;
        animation: bankease2 1s;
}
@keyframes bankease2
{
    from{top:100%}
    to{top:0%}
}

.acctable
{
    background-color:rgba(0,0,0,0.6);
	width:95%;
	height:70%;
        margin-top: 100px;
        margin-left: 40px;
        border-radius: 25px;
        border: double;
        border-color: white;
        transition: 0.3s;
}
.acctable:hover{
        transform: translateY(-8px);
        box-shadow: 0 8px 20px rgba(255, 255, 255, 0.6);
    }


    
  
        
    </style>
    <body>
        
        <div class="frontdiv">
        <table width='100%' class='tabtheme'>
            <tr align='center'>
                
                
                <dojo:head debug="true"/>
                
                <td class='box' width='10%'><struts:a href="dashboarddlink.action">Dashboard</struts:a></td>
                <td class='box' width='10%'><struts:a href="showaccountlink.action">Accounts</struts:a></td>               
                <td class='box' width='10%'><struts:a href="showbookinglink.action">Bookings</struts:a></td>
                <td class='box' width='10%'><struts:a href="authsettinglink.action">Settings</struts:a></td>
               
                
            </tr>
        </table>
        
        <div  class="option">
                 
            <table cellspacing="10px" cellpadding="10px">
                <tr align='center'>
                    <td  class='logintheme' width=50%><struts:a  href="authlink.action"  style="color:white;font-size: 20px">Log Out</struts:a></td>
                </tr>
        </table>
            
        </div>
            
            
         
            
            <div class="acctable">
           <br><br><br><br><br>
                <table  width="100%"  align="center" cellspacing="30px" style="margin-top: -50px; color: white">
                    <tr>
                        <td>ID</td>
                        <td>Full Name</td>
                        <td>Mail</td>
                        <td>Contact</td>
                        <td>Date Of Birth</td>
                        <td>Gender</td>
                        <td>Post</td>
                        <td>Department</td>
                        <td>Address</td>
                        <td>City</td>
                        
                    </tr>
                    
                    <%
                        SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
                        Session session1=sessionFactory.openSession();
                        Transaction tx=session1.beginTransaction();
                        Criteria crit=session1.createCriteria(Employee.class);
                        List<Employee> data=crit.list();
                    for(Employee employee: data)
                    {
                    %><tr>
                        <td><%=employee.getId()%></td>
                        <td><%=employee.getEmpname1()%></td>
                        <td><%=employee.getEmpmail1()%></td>
                        <td><%=employee.getEmpcontact1()%></td>
                        <td><%=employee.getDateofbirth1()%></td>
                        <td><%=employee.getEmpgender1()%></td>
                        <td><%=employee.getEmppost1()%></td>
                        <td><%=employee.getEmpdepartment1()%></td>
                        <td><%=employee.getEmpaddress1()%></td>
                        <td><%=employee.getEmpcity1()%></td>
                        
                        
                    </tr>
                    <%}%>
                    <tr>
                    </tr>
                </table>

        </div>
            
            
            
            
            
            
            
            
            
            
            
            

    </body>
</html>    