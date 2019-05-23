<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>Student Forum</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<style>
      #form
    {
        height: 200px;
        width: 400px;
        background-color: lightyellow;
        border :  2px solid black;
        box-shadow: 5px 8px black;
       
    }
</style>
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
        <li><a href="index.jsp"><i class="fa fa-lg fa-home"></i></a></li>
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
        <h1><a href="#">Registration Form</a></h1>
    </div>
    <nav id="mainav" class="hoc clear"> 
</div>
<nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li class="active"><a href="index.jsp">Home</a></li>
     <!--
      <li><a class="drop" href="#">Clubs</a>
        <ul>
          <li><a href="pages/gallery.html">gallery</a></li>
          <li><a href="pages/full-width.html">CulturalActivities</a></li>
          <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
          <li><a href="pages/sidebar-right.html"></a></li>
          <li><a href="pages/basic-grid.html"></a></li>
        </ul>
      </li>
      -->
      
      <li><a class="drop" href="#">Clubs</a>
        <ul>
          <li><a href=codestrom.jsp>coding</a></li>
          <li><a class="drop" href="#">RevaCultural</a>
            <ul>
              <li><a href="#">Dance</a></li>
              <li><a href="#">song</a></li>
              <li><a href="#">Street play</a></li>
            </ul>
          </li>
          <li><a href="sports.jsp">Sports</a></li>
        </ul>
      </li>
      <li><a href="#">News</a></li>
      <li><a href="">Academics</a>
      <ul>
          <li><a href="">C AnD IT</a></li>
          <li><a href="">Electronics</a> </li>
          <li><a href="">MECHANICAL</a> </li>
          <li><a href="">Electrical</a> </li>
          <li><a href="">Civil</a></li>
          
      </ul>
      </li>
      <li><a href="#">About Us</a></li>
      <li><a href="faculty.jsp"> Faculty</a></li>
    </ul>
    <!-- ################################################################################################ -->
  </nav>
<center>
     <div id="form">
            <center>
        
            <form action="" method="post">
                <table>
                    <tr>
                        <th>
                            SRN:
                        </th>
                        <td>
                            <input type="text" name="srn"/>
                        </td>
                    </tr>
                     <tr>
                        <th>
                            NAME:
                        </th>
                        <td>
                            <input type="text" name="uname"/>
                        </td>
                    </tr>
                     <tr>
                        <th>
                            PASSWORD:
                        </th>
                        <td>
                            <input type="password" name="pwd"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            School:
                        <td>
                            <input type="text" name ="school"/>
                        </td>
                        </th>
                    </tr>
                    
                </table>
                     
                    <center>
                        
                            <input type="submit" value="ADD" style="background-image: repeating-linear-gradient(#ff6666,#ffcccc);width: 100px;height: 40px;"/>
                       
                    </center>       
            </form>
               
</center>
     </div>
</center>
<%
    if(request.getMethod().equalsIgnoreCase("post"))
    {
        String srn=request.getParameter("srn");
        String uname=request.getParameter("uname");
        String pwd=request.getParameter("pwd");
        String school=request.getParameter("school");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/forum","root","");
        PreparedStatement ps=con.prepareStatement("insert into register(srn,name,password,school) values(?,?,?,?)");
        ps.setString(1, srn);
        ps.setString(2, uname);
        ps.setString(3, pwd);
        ps.setString(4, school);
        int i =ps.executeUpdate();
        if(i>0)
        {
            %>
<br>
<br>
<br>
<center>
    <div>
    <h3>
        <font size="5">
        SuccessFully Registered!!!
        </font>
    </h3>  
</center>
<%
        }
else
{
    %>
<div>
    <h3>
        <font size="5">
        Failed to register :(
        </font>
    </h3>
</div>
<%
    }
}
    
  %> 
</body>
  </html>