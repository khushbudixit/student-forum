<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!--
Template Name: Interlingua
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html lang="">
<head>
<title>SportsReview Section</title>
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
        <li><i class="fa fa-phone"></i> 6360732060</li>
        <li><i class="fa fa-envelope-o"></i> kushboo19dixit@gmail</li>
      </ul>
    </div>
    <div class="fl_right">
      <ul>
        <li><a href="index.jsp"><i class="fa fa-lg fa-home"></i></a></li>
        <li><a href="login.jsp">Login</a></li>
        <li><a href="register.jsp">Register</a></li>
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
      <h1>Reva Sports Review</h1>
      
    </div>
    
      <!-- ################################################################################################ -->
  </header>
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li><a href="index.jsp">Home</a></li>
      <li class="active"><a class="drop" href="#">Pages</a>
        <ul>
          <li><a href="sportsgallery.html">Gallery</a></li>
          
        </ul>
      <li><a href="#">FeedBack</a></li>
      <li><a href="#">Notifications</a></li>
      
   
    <!-- ################################################################################################ -->
  </nav>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
 
    <!-- ################################################################################################ -->
   
    <!-- ################################################################################################ -->
    
    <!-- ################################################################################################ --
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="sidebar one_quarter first"> 
      <!-- ################################################################################################ -->
      <h6>Latest News</h6>
      <nav class="sdb_holder">
        
       
     
          <li><a href="article.jsp">Articles</a></li>
          <li><a href="#"></a></li>
        </ul>
      </nav>
      <div class="sdb_holder">
        <h6>Reva Sports</h6>
        <address>
        Reva University<br>
        Rukmini Knowlege Park<br>
        Kattigenahalli,Yelahanka<br>
        Bangalore<br>
        560064<br>
        <br>
        Tel:080-66226622<br>
        Email: <a href="#">www.reva.edu.in</a>
        </address>
      </div>
      <div class="sdb_holder">
        <article>
          <h6>Lorem ipsum dolor</h6>
          <p>Nuncsed sed conseque a at quismodo tris mauristibus sed habiturpiscinia sed.</p>
          <ul>
            <li><a href="#">Lorem ipsum dolor sit</a></l
      </div>
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="content three_quarter"> 
      <!-- ################################################################################################ -->
      <h1>SPORTS-FORUM</h1>
      <img class="imgr borderedbox inspace-5" src="../images/demo/imgr.gif" alt="">
      <p>Student Forums are a great place for user to interact with eachother who are taking the same courses as you. You can ask about a problem you are having, share something you?ve enjoyed about the course, or help out your fellow students. Forums are dynamic environments that rely on participant energy to thrive, and we have been thrilled by how active these forums are and continue to be.

      </p>
      <h1>Table(s)</h1>
      <div class="scrollable">
        <table>
          <thead>
            <tr>
              <th>Srno</th>
              <th>Event</th>
              <th>University</th>
              <th>Time</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><a href="#">R16cs191</a></td>
              <td>ThrowBall Competition</td>
              <td>Reva University</td>
              <td>3:30-4:30</td>
            </tr>
            
          </tbody>
        </table>
      </div>
      <div id="comments">
        <h2>Comments</h2>
        <ul>
          <li>
            <article>
              <header>
                <figure class="avatar"><img src="../images/demo/avatar.png" alt=""></figure>
                <address>
                By <a href="#">A Name</a>
                </address>
                <time datetime="2045-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2045 @08:15:00</time>
              </header>
              <div class="comcont">
                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
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
      <%
         
    if(request.getMethod().equalsIgnoreCase("post"))
    {
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String comment=request.getParameter("comment");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/revastudentforum","root","");
        PreparedStatement ps=con.prepareStatement("insert into review(name,emial,comment) values(?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, comment);
       
        int i =ps.executeUpdate();
       
                }
       %>
      
      
           
<br>
<br>
<br>




         
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row4 bgded overlay" style="background-image:url('images/reva1.jpg');">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="one_third first">
      <h6 class="heading">REVA Student Forum</h6>
      <ul class="nospace btmspace-30 linklist contact">
        <li><i class="fa fa-map-marker"></i>
          
        </li>
        <li><i class="fa fa-phone"></i> 080-66226622</li>
        
        <li><i class="fa fa-envelope-o"></i> www.reva.edu.in</li>
      </ul>
    </div>
    <div class="one_third">
     
      
      <form method="post" action="#">

      </form>
    </div>
    <div class="one_third">
      
      
  
  
    </div>
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2016 - All Rights Reserved - <a href="#">Domain Name</a></p>
  
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