<html>
    <style>
        body
        {
          background-image:url('images2/companylogin1.gif'); 
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
    
    .frontdiv
    {
	background-color:rgba(255,239,230,0.6);
	width:100%;
	height:100%;
        position: absolute;
    }

        
    </style>
    <body>
                
    <div  class="frontdiv">
        
        
        <%@taglib prefix="struts" uri="/struts-tags"%>
<%@taglib prefix="dojo" uri="/struts-dojo-tags" %>

<dojo:head debug="true"/>



<struts:form action="authlogin.action" cssStyle="margin-top:250px">
    <table align="center" cellpadding="10px">
                    
                <tr>
         
                    <td><struts:textfield label="Id" name="id" cssStyle="width:200px"/></td>
                </tr>    
                
                <tr><td> <struts:password label="Password" name="password" cssStyle="width:200px;height:30px"/> </td></tr>      
                
                </table>
                
                <tr align="center">
                    <struts:submit  label="submit"  theme="simple"  cssStyle="width:200px;height:50px;margin-top:30px;margin-left:650px"/>
                    
                </tr>
</struts:form>  
    
    
    
    
    
    </div>

    
  
    </body>
</html>    


   