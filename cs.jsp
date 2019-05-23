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
<title>Computer Science Section</title>
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
      <ul
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
      
      <p  style="font-size:22px;color:white;font-weight:bold;text-transform:capitalize;">Reva Student Forum</p></a></h1><br>
      <p  style="font-size:22px;color:orange;font-weight:bold;text-transform:capitalize;">Computer Science</p>
    </div>
    
      <!-- ################################################################################################ -->
  </header>
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li><a href="index.jsp">Home</a></li>
      <li class="active"><a class="drop" href="#">Pages</a>
        <ul>
          <li><a href="sports.jsp">Gallery</a></li>
          
        </ul>
      <li><a href="article.jsp">Articles</a></li>
      <li><a href="notification.jsp">Notification</a></li>
              
      
     
   
    <!-- ################################################################################################ -->
  </nav>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="sidebar one_quarter first"> 
      <!-- ################################################################################################ -->
      <h6></h6>
      <nav class="sdb_holder">
        
       
     
          <li><p  style="font-size:30px;color:blue;font-weight:bold;text-transform:capitalize;">Topics</p></li>
          <li><a href="databases.jsp"><p  style="font-size:25px;color:green;font-weight:bold;">Database Management Sytsem</p></a></li>
          <li><a href="Digitallogic.jsp"><p  style="font-size:25px;color:Black;font-weight:bold;">Digital Logic</a></li>
          <li><a href="coa.jsp"><p  style="font-size:25px;color:blue;font-weight:bold;">Computer Organization Architecture</a></li>
          <li><a href="data.jsp"><p  style="font-size:25px;color:yellow;font-weight:bold;">Data Structures and Algorithms</a></li>
          <li><a href="networks.jsp"><p  style="font-size:25px;color:grey;font-weight:bold;">Computer Networks</a></li>
        </ul>
      </nav>
      <div class="sdb_holder">
        <h6></h6>
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
      <!--
      <div class="sdb_holder">
        <article>
          <h6>Lorem ipsum dolor</h6>
          <p>Nuncsed sed conseque a at quismodo tris mauristibus sed habiturpiscinia sed.</p>
          <ul>
            <li><a href="#">Lorem ipsum dolor sit</a></li>
            <li>Etiam vel sapien et</li>
            <li><a href="#">Etiam vel sapien et</a></li>
          </ul>
          <p>Nuncsed sed conseque a at quismodo tris mauristibus sed habiturpiscinia sed. Condimentumsantincidunt dui mattis magna intesque purus orci augue lor nibh.</p>
          <p class="more"><a href="#">Continue Reading &raquo;</a></p>
        </article>
      </div>
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="content three_quarter"> 
      <!-- ################################################################################################ -->
      <h1><p style="font-size:30px;font-weight:bold;text-tranformation:capitalize;">Computer Science Club</p></h1>
      <img class="imgr borderedbox inspace-5" src="../images/demo/imgr.gif" alt="">
      <p>So, what is computer science? Generally speaking, computer science is the study of computer technology, both hardware and software. However, computer science is a diverse field; the required skills are both applicable and in-demand across practically every industry in today's technology-dependent world. As such, the field of computer science is divided amongst a range of sub-disciplines, most of which are full-fledged specialized disciplines in and of themselves. The field of computer science spans several core areas: computer theory, hardware systems, software systems, and scientific computing. Students will choose credits from amongst these sub-disciplines with varying levels of specialization depending on the desired application of the computer science degree. Though most strict specialization occurs at the graduate level, knowing exactly what computer science is (and where a student's interests fall within this vast field) is of paramount importance to knowing how to study computer science.
  
      </p>
      <!--
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
              <td><a href="#">Value 1</a></td>
              <td>Value 2</td>
              <td>Value 3</td>
              <td>Value 4</td>
            </tr>
            <tr>
              <td>Value 5</td>
              <td>Value 6</td>
              <td>Value 7</td>
              <td><a href="#">Value 8</a></td>
            </tr>
            <tr>
              <td>Value 9</td>
              <td>Value 10</td>
              <td>Value 11</td>
              <td>Value 12</td>
            </tr>
            <tr>
              <td>Value 13</td>
              <td><a href="#">Value 14</a></td>
              <td>Value 15</td>
              <td>Value 16</td>
            </tr>
          </tbody>
        </table>
      </div>
      -->
      <div id="comments">
        <h2>Comments</h2>
        <ul>
          <li>
            <article>
              <header>
                <figure class="avatar"><img src="../images/demo/avatar.png" alt=""></figure>
                <address>
                By <a href="#">By Shreya</a>
                </address>
                <time datetime="2045-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2045 @08:15:00</time>
              </header>
              <div class="comcont">
                <p>Q:What is the difference between information technology and computer science?</p>
              </div>
            </article>
          </li>
          <li>
            <article>
              <header>
                <figure class="avatar"><img src="../images/demo/avatar.png" alt=""></figure>
                <address>
                By <a href="#">By Reethika</a>
                </address>
                <time datetime="2045-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2045 @08:15:00</time>
              </header>
              <div class="comcont">
                <p>An It career invovles installing,organizing and maintaining computer systems as well as designing operating networks and databases.Computer scinece is focused entirely on effciently programming computers using mathematical algorithms</p>
              </div>
            </article>
          </li>
          <l
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
<!--
<div class="wrapper row4 bgded overlay" style="background-image:url('images/reva1.jpg');">
  <footer id="footer" class="hoc clear"> 
   
    <div class="one_third first">
      <h6 class="heading">REVA Student Forum</h6>
      <ul class="nospace btmspace-30 linklist contact">
        <li><i class="fa fa-map-marker"></i>
          
        </li>
        <li><i class="fa fa-phone"></i> 080-66226622</li>
        
        <li><i class="fa fa-envelope-o"></i> www.reva.edu.in</li>
      </ul>
    </div>
    -->
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