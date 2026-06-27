<%@taglib prefix="struts" uri="/struts-tags"%>
<%@taglib prefix="dojo" uri="/struts-dojo-tags" %>

<html>
    <style>
        body
        {
          background-image:url('images2/setting.gif'); 
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
            margin-left:1270px;
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
        font-size:25px;
        margin-left: 0px;
        margin-top: 100px;
    }
    .book
    {
        background-color:rgba(0,0,0,0.1);
	width:100%;
	height:110%;
        position: absolute;
    }
    
    .pwdtable
    {
	background-color:rgba(129,133,144,0.6);
	width:40%;
	height:60%;
        margin-top: 100px;
        margin-left: 450px;
        border-radius: 25px;
        border: double;
        border-color: white;
        transition: 0.3s;
        
    }
    .pwdtable:hover{
        transform: translateY(-8px);
        box-shadow: 0 8px 20px rgba(255, 255, 255, 0.6);
    }
    

    
  
        
    </style>
    <body>
        
        
        <div class="book">
        <table width='100%' class='tabtheme'>
            <tr align='center'>
                
                <dojo:head debug="true"/>
                
                <td class='box' width='10%'><struts:a href="dashboardlink.action">Dashboard</struts:a></td>
                <td class='box' width='10%'><struts:a href="bookinglink.action">Booking</struts:a></td>
                <td class='box' width='10%'><struts:a href="settinglink.action">Settings</struts:a></td>
                <td class='box' width='10%'><struts:a href="empaccdeletelink.action">Delete</struts:a></td>
                <td class='box' width='10%'><a href="mailto:">Complain</a></td>
               
                
            </tr>
        </table>
        
        <div  class="option">
                 
            <table cellspacing="10px" cellpadding="10px">
                <tr align='center'>
                    <td  class='logintheme' width=50%><struts:a  href="login.action"  style="color:white;font-size: 20px">Log Out</struts:a></td>
                </tr>
        </table>
            
        </div>
            
            <div class="pwdtable">
            
            
            







            <struts:form action="passcode.action" cssStyle="margin-top:50px;margin-left:-50px;text-color:#4c9e92">
                
                <table align="center" cellpadding="10px">
                    
                <tr>
         
                    <tr><td> <struts:textfield label="ID" name="id" cssStyle="width:200px;border-radius:5px;"/> </td></tr>               
                
                </tr>    
                
                <tr><td> <struts:password label="Password" name="password1" cssStyle="width:200px;height:25px;border-radius:5px;"/> </td></tr>  
                
                <tr><td> <struts:password label="New Password" name="npass" cssStyle="width:200px;height:25px;border-radius:5px;"/> </td></tr>
                
                <tr><td> <struts:password label="Confirm Password" name="cpass" cssStyle="width:200px;height:25px;border-radius:5px;"/> </td></tr>
                
                </table>
                
                <table >
                
                <tr align="center">
                    <struts:submit  label="submit"  theme="simple"  cssStyle="width:300px;height:30px;margin-top:30px;margin-left:200px;color: #4c9e92;background-color: black;border-radius:10px;"/>
                    
                </tr>
                
                </table>
                
                
          
                
             </struts:form>  

            </div>

            </div>
        
      
        

         
    </body>
</html>    