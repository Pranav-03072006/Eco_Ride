<%@taglib prefix="struts" uri="/struts-tags"%>
<%@taglib prefix="dojo" uri="/struts-dojo-tags" %>

<html>
    <style>
        body
        {
          background-image:url('images2/auth3.gif'); 
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

    
  
        
    </style>
    <body>
        
        <div class="frontdiv">
        <table width='100%' class='tabtheme'>
            <tr align='center'>
                
                <dojo:head debug="true"/>
                
                <td class='box' width='10%'><struts:a href="homelink.action">Home</struts:a></td>
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
        
        <div class="data">
            
            <h1>
               WELCOME SIR!!!
            </h1>
             
        </div>
            
            <div class="quote">
                <h1>
                    Logged in successfully, Your tools, Your control.
                </h1>
            </div>
            
       <!---     <div  class="services">
	<table  width="50%" align=center  style="margin-top:30px"  cellpadding=10px>
	<tr>
            <td><img src="images2/comp.png"  width=300px  height=250px  style=border-radius:60px></td>
            <td><img src="images2/book.png"  width=300px  height=250px  style=border-radius:60px></td>
            <td><img src="images2/complain112.png"  width=300px  height=250px  style=border-radius:60px></td>
            <td><img src="images2/feed.png"  width=300px  height=250px  style=border-radius:60px></td>
            
           <!-- <td><a href="viewjobs.jsp"><img src="images/a4-removebg-preview.png"  width=300px  height=250px  style=border-radius:60px></a></td>--->

            
	</tr>
	</table>
	</div>
            
            
     
        
        
        
       
        
    
         
         
         
         
         
    </body>
</html>    