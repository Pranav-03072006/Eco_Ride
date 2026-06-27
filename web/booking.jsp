<%@taglib prefix="struts" uri="/struts-tags"%>
<%@taglib prefix="dojo" uri="/struts-dojo-tags" %>

<html>
    <style>
        body
        {
          background-image:url('images2/booking4.gif'); 
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
    
    .booktable
    {
	background-color:rgba(129,133,144,0.6);
	width:50%;
	height:60%;
        margin-top: 100px;
        margin-left: 400px;
        border-radius: 25px;
        border: double;
        border-color: white;
        transition: 0.3s;
        
    }
    .booktable:hover{
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
                <td class='box' width='10%'><struts:a href="emprequest.action">Booking</struts:a></td>
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
            
            
            
            
            <div class="booktable">
            
            
            


                                            

            <struts:form action="emprequest.action" enctype="multipart/form-data" cssStyle="margin-top:15px;margin-left:100px;width:500px;color: white;height:520px;">
                
                <table align="center" cellpadding="7px">
                
                    
<!--                <tr><td> <struts:textfield label="Id" name="id" cssStyle="width:200px;border-radius:5px;"/> </td></tr>-->
                
                <tr><td> <struts:textfield label="Mail" name="empmail1" cssStyle="width:200px;border-radius:5px;"/> </td></tr>               
                
                <tr><td> <struts:radio list="{'Driver','Driverless'}" name="cabtype" label="cabtype"/> </td></tr>
                
                <tr><td> <struts:radio list="{'Yes','No'}" name="sharingchoice" label="sharingchoice"/> </td></tr>
                
                <tr><td> <struts:textfield label="Destination" name="empdestination" cssStyle="width:200px;border-radius:5px;"/> </td></tr>
                
                <tr><td> <struts:textfield label="Amount" name="amount" cssStyle="width:200px;border-radius:5px;"/> </td></tr>
                
                <tr><td> <dojo:datetimepicker label="Date" name="date" cssStyle="width:200px;border-radius:5px;"/> </td></tr>

                <tr><td> <dojo:datetimepicker label="Time" name="time" type="time" cssStyle="width:200px;border-radius:5px;"/> </td></tr>      
                
                

                <tr align="center" cellspacing="20px"><td colspan="4">  
                        
                <struts:submit  label="Submit"  theme="simple"  cssStyle="width:100px;height:50px;color:#4c9e92;background-color: black;border-radius:10px;"/>
                <struts:reset  label="Clear"  theme="simple"  cssStyle="width:100px;height:50px;color:#4c9e92;background-color: black;border-radius:10px;"/>
               
                </td></tr>
                
                </table>
             </struts:form>   
            
            </div>
            
            
            
            
            
            
            
            
            
            
            
            
        </div>
        
      
        
        
       
        
    
         
         
         
         
         
    </body>
</html>    





