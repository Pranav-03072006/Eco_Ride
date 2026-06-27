<%@taglib prefix="struts" uri="/struts-tags"%>
<%@taglib prefix="dojo" uri="/struts-dojo-tags" %>

<html>
    <style>
        body
        {
          background-image:url('images2/signup11.jpg'); 
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
        margin-left: 500px;
        color: white;
        font-size:25px;
        margin-left: 0px;
        margin-top: 60px;
    }
    
    .seconddiv
    {
	background-color:rgba(129,133,144,0.6);
	width:50%;
	height:80%;
        margin-left: 400px;
        border-radius: 25px;
        border: double;
        border-color: white;
        transition: 0.3s;
        
    }
    .seconddiv:hover{
        transform: translateY(-8px);
        box-shadow: 0 8px 20px rgba(255, 255, 255, 0.6);
    }

    
  

    
  
        
    </style>
    <body>
        <table width='100%' class='tabtheme'>
            <tr align='center'>
                
                <dojo:head debug="true"/>

                <td class='box' width='10%'><struts:a href="homelink.action">Home</struts:a></td>
                <td class='box' width='10%'><struts:a href="aboutlink.action">About Us</struts:a></td>
                <td class='box' width='10%'><struts:a href="serviceslink.action">Services</struts:a></td>
                <td class='box' width='10%'><struts:a href="contactlink.action">Contact Us</struts:a></td>
               
                
            </tr>
        </table>
        
        <div  class="option">
                 
            <table cellspacing="10px" cellpadding="10px">
                <tr align='center'>
                    <td class='signuptheme' width=50%><struts:a  href="signuplink.action"  style="color:white;font-size: 20px">Sign Up</struts:a></td>
                    <td  class='logintheme' width=50%><struts:a  href="login.action"  style="color:white;font-size: 20px">Log In</struts:a></td>
                </tr>
        </table>
            
        </div>
        
        <div class="data">
            <h2 style="margin-left: 450px">
                Sign Up. Show Up. Sustain Together ~ ~ ~
            </h2>
            
            
            
        </div>
        
        <div class="seconddiv">
            
        


            

            <struts:form action="signup.action" enctype="multipart/form-data" cssStyle="margin-top:-5px;margin-left:100px;width:500px;color: white;height:520px;">
                
                <table align="center" cellpadding="5px">
                    
                    
                <tr><td> <struts:textfield label="Id" name="id" cssStyle="width:200px;border-radius:5px;"/> </td></tr>

                <tr><td> <struts:textfield label="Mail ID" name="empmail1" cssStyle="width:200px;border-radius:5px;"/> </td></tr>   
                
                <tr><td> <struts:password label="Password" name="password1" cssStyle="width:200px;border-radius:5px;"/> </td></tr> 
                 
                <tr><td> <dojo:datetimepicker label="DOB" name="dateofbirth1" cssStyle="width:200px;border-radius:5px;"/> </td></tr>
                <tr><td> <struts:textfield label="Post" name="emppost1" cssStyle="width:200px;border-radius:5px;"/> </td></tr>              
                <tr><td> <struts:textfield label="Department" name="empdepartment1" cssStyle="width:200px;border-radius:5px;"/> </td></tr>
                 <tr><td> <struts:radio list="{'male','female'}" name="empgender1" label="Gender"/> </td></tr>
                <tr><td> <struts:textarea label="Address" name="empaddress1" cssStyle="width:200px;border-radius:5px;"/> </td></tr>
                <tr><td> <dojo:autocompleter label="City" list="{'Indore','Ujjain','Prithampur','Rau'}" name="empcity1" showDownArrow="false" autoComplete="false"/> </td></tr>
               
                 
                
                <tr><td><struts:textfield label="Full name" name="empname1" cssStyle="width:200px;border-radius:5px;"/></td></tr>    
                
                
                         
                
                <tr><td> <struts:textfield label="Contact" name="empcontact1" cssStyle="width:200px;border-radius:5px;"/> </td></tr>
                
               
                
             
                
                               
               
                
                
                          
               
                
                
                <tr><td> <struts:file label="Upload Photo" name="empphoto1" cssStyle="width:200px;border-radius:5px;"/> </td></tr>
                
                <tr align="center" cellspacing="20px"><td colspan="4">  
                        
                <struts:submit  label="Submit"  theme="simple"  cssStyle="width:100px;height:50px;color:#4c9e92;background-color: black;border-radius:10px;"/>
                <struts:reset  label="Clear"  theme="simple"  cssStyle="width:100px;height:50px;color:#4c9e92;background-color: black;border-radius:10px;"/>
               
                </td></tr>
                
                </table>
             </struts:form>       
            
            
            
            
            
            
            
            
            
        </div>
        
       
        
    
         
         
         
         
         
    </body>
</html>    



     
            
            
