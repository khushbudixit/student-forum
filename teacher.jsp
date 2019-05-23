<!DOCTYPE html>
<html lang="">
<head>
<title>Student Forum</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left">
      <ul>
        <li><i class="fa fa-phone"></i>63-60-732-060</li>
        <li><i class="fa fa-envelope-o"></i> kushboo19dixit@gmail.com</li>
      </ul>
    </div>
    <div class="fl_right">
      <ul>
        <li><a href="#"><i class="fa fa-lg fa-home"></i></a></li>
        <li><a href="login.jsp">Login</a></li>
        <li><a href="register.jsp">Register</a></li>
        <li><a href="#">help</a></li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      
        <h1><a href="#"><p  style="font-size:22px;color:white;font-weight:bold;text-transform:capitalize;">Reva Student Forum</p></a></h1><br>
  <p  style="font-size:22px;color:blue;font-weight:bold;text-transform:capitalize;">Faculty Login</p>
    </div>
    <!--
    <div id="quickinfo" class="fl_right">
      
        <a target="_blank" href="https://twitter.com/SerafinDominik"><h4><i class="fa fa-twitter"></i></h4></a>
        <a target="_blank" href="https://www.behance.net/dominikserafin"><h4><i class="fa fa-behance"></h4></i></a>
        <a target="_blank" href="https://github.com/DominikSerafin/"><h4><i class="fa fa-github"></i></h4></a>
        <a target="_blank" href="https://linkedin.com/pub/dominik-serafin/a1/672/93b"></h4><i class="fa fa-linkedin"></i></h4></a>
    </div>
    -->
  </header>
  <nav id="mainav" class="hoc clear"> 
    <ul class="clear">
      <li class="active"><a href="index.jsp">Home</a></li>
      <li><a href="teacher.jsp">FACULTY</a></li>
      <li><a href="login.jsp">STUDENT</a></li>
    </ul>
  </nav>
</div>
        <style>
   
      #form
    {
        width: 400px;
        height: 200px;
        float: left;
        padding-top: 50px;
        margin-left: 150px;
        
        
        text-color:white;
        border-radius: 50px;
    }
    button
    {
        background-image: linear-gradient(#00cc33,#ccffcc);
        border-radius: 3px;
    }
     button
    {
        background-image: linear-gradient(#00cc33,#ccffcc);
        border-radius: 6px;
        margin-right: 50px;
        
    }

        </style>
        
    <body bgcolor="black">
        
    <center>
        <div id="form">
            <form action="" method="post">
                <center>      
                <table>
                    
                    <tr>
                        <th>
                            USERNAME:
                        </th>
                        <td>
                            <input type="text" name='uname'/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            PASSWORD:
                        </th>
                        <td>
                            <input type="password" name='pwd'/>
                        </td>
                    </tr>
                
                </table>
               
                       <tr style="margin-top: 20px;">
                    <center>
                        
                            <input type="submit" value='SUBMIT' style="height: 40px;width: 150px;background-image:black;margin-top: 50px;margin-left: 50px;"/>
                        
                    </center>
                    </tr>
               
                
            </form>
        </center>
    </div>
                       <%
            if(request.getMethod().equalsIgnoreCase("post"))
            {
            
            
               String uname=request.getParameter("uname");
                String pwd=request.getParameter("pwd");
               
                request.getRequestDispatcher("index.jsp").forward(request, response);
                
            }

            %> 
            
</head>
</html>