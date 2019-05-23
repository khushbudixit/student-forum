<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>Student Forum</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">

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
      </ul>
    <!--
    <div class="f1_right">
        <a target="_blank" href="https://twitter.com/SerafinDominik"><h4><i class="fa fa-twitter"></i></h4></a>
        <a target="_blank" href="https://www.behance.net/dominikserafin"><h4><i class="fa fa-behance"></h4></i></a>
        <a target="_blank" href="https://github.com/DominikSerafin/"><h4><i class="fa fa-github"></i></h4></a>
        <a target="_blank" href="https://linkedin.com/pub/dominik-serafin/a1/672/93b"></h4><i class="fa fa-linkedin"></i></h4></a>
    </div>
    <!-- ################################################################################################ -->
  </div>
</div>
<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
        
        <p style="font-size:25px;color:orange;text-transform:capitalize;">REVA STUDENT FORUM </p><br><br>
        
        <a href="#"><p  style="font-size:22px;color:white;font-weight:bold;text-transform:capitalize;">Android Club Registration</p></a>
     
     
    </div>
  </header>
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
      <li class="active"><a href="index.jsp">Home</a></li>
      <li><a href="androidgallery.jsp">Gallery</a></li>
  </nav>
    <div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="sidebar one_quarter first"> 
      <!-- ################################################################################################ -->
   
</div>
 <br>
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
        PreparedStatement ps=con.prepareStatement("insert into androidregister(srn,name,password,school) values(?,?,?,?)");
        ps.setString(1, srn);
        ps.setString(2, uname);
        ps.setString(3, pwd);
        ps.setString(4, school);
        int i =ps.executeUpdate();
        if(i>0)
        {
            %>
                <h3>
        <font size="5">
        SuccessFully Registered!!!
        </font>
    </h3>  
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
<br>
<br>
<br>

    </div>
</body>
</html>