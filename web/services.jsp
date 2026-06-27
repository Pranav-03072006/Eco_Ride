<%@taglib prefix="struts" uri="/struts-tags"%>
<%@taglib prefix="dojo" uri="/struts-dojo-tags" %>


<html>
    <style>
        body
        {
          background-image:url('images2/services2.jpg'); 
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
        font-size:25px;
        margin-left: 0px;
        margin-top: 100px;
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
        
        
   
         
    </body>
</html>    