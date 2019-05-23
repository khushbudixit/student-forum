<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
        
        <a href="#"><p  style="font-size:22px;color:white;font-weight:bold;text-transform:capitalize;">BEYOUND THE ACADEMICS</p></a>
     
     
    </div>
  </header>
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
      <li class="active"><a href="index.jsp">Home</a></li>
      <li><a href="sportsgalley.jsp">Gallery</a></li>
      <li><a href="timetable.jsp">TimeTable</a></li>
      <li><a href="sportscomment.jsp">Comment</a></li>
      <li><a href="sportsregister.jsp">Register</a></li>
      </nav>
<div id="comments">
        <h2>Comments</h2>
        <ul>
          <li>
            <article>
              <header>
                <figure class="avatar"><img src="../images/demo/avatar.png" alt=""></figure>
                <address>
                By <a style="font-size:15px;color:black;text-transform:capitalize";>A Raghavendra</a>
                </address>
                <time datetime="2045-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2019 @08:15:00</time>
              </header>
              <div class="comcont">
                <p>  Great place for user to interact with each other who are taking the same sports as you. Forums are dynamic environments that rely on participant energy to thrive, and we have been thrilled by how active these forums are and continue to be.</p>
              </div>
            </article>
          </li>
                    <li>
            <article>
              <header>
                <figure class="avatar"><img src="../images/demo/avatar.png" alt=""></figure>
                <address>
                By <a style="font-size:15px;color:black;text-transform:capitalize";>A Sagar</a>
                </address>
                <time datetime="2045-04-06T08:15+00:00">Friday, 4<sup>th</sup> April 2019 @08:20:00</time>
              </header>
              <div class="comcont">
                <p>Can I know about the football Events timings?</p>
              </div>
            </article>
          </li>
        </ul>
        <h2>Write A Comment</h2>
        <form action="#" method="post">
          <div class="one_third first">
            <label for="name">Name <span>*</span></label>
            <input type="text" name="name" id="name" value="" size="22" required>
          </div>
          <div class="one_third">
            <label for="email">Mail <span>*</span></label>
            <input type="email" name="email" id="email" value="" size="22" required>
          </div>
          <div class="block clear">
            <label for="comment">Your Comment</label>
            <textarea name="comment" id="comment" cols="25" rows="10"></textarea>
          </div>
          <div>
            <input type="submit" name="submit" value="Submit Form">
            &nbsp;
            <input type="reset" name="reset" value="Reset Form">
          </div>
        </form>
      </div>
      <!-- ################################################################################################ -->
    </div>
    <%
    if(request.getMethod().equalsIgnoreCase("post"))
    {
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String comment=request.getParameter("comment");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/revastudentforum","root","");
        PreparedStatement ps=con.prepareStatement("insert into sportsreview(name,email,comment) values(?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, comment);
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
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2016 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <!-- ################################################################################################ -->
  </div>
</div>

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="../layout/scripts/jquery.min.js"></script>
<script src="../layout/scripts/jquery.backtotop.js"></script>
<script src="../layout/scripts/jquery.mobilemenu.js"></script> 
</body>
</html>