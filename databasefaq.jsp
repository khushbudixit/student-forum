<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
<title>Database</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<style>
          #form
    {
        height: 230px;
        width: 500px;
        background-color: lightyellow;
        border :  2px solid black;
        box-shadow: 5px 8px black;
        float:left;
        Margin:10px;
    }
          #forms
    {
        height: 300px;
        width: 500px;
        background-color: #AFFFA2;
        border :  2px solid black;
        box-shadow: 5px 8px black;
        Margin:10px;
    } 
    #formss
    {
        height: 200px;
        width: 500px;
        background-color: lightblue;
        border :  2px solid black;
        box-shadow: 5px 8px black;
        float:right;
        position:relative;
        top:-525px;

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
        <li><i class="fa fa-phone"></i> +00 (123) 456 7890</li>
        <li><i class="fa fa-envelope-o"></i> info@domain.com</li>
      </ul>
    </div>
    <div class="fl_right">
      <ul>
        <li><a href="index.jsp"><i class="fa fa-lg fa-home"></i></a></li>
        <li><a href="#">Login</a></li>
        <li><a href="#">Register</a></li>
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
      <h1><a href="../index.html">COMPUTER SCIENCE CLUB</a></h1>
      <p>DATABASE MANAGEMENT SYSTEM</p>
    </div>
    <!--
    <div id="quickinfo" class="fl_right">
      <ul class="nospace inline">
        <li><strong>Praesent:</strong><br>
          +00 (123) 456 7890</li>
        <li><strong>Faucibus:</strong><br>
          +00 (123) 456 7890</li>
      </ul>
    </div>
    -->
    <!-- ################################################################################################ -->
  </header>
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li><a href="index.jsp">Home</a></li>
      
      <li><a href="gatedbms.jsp">GATE Questions</a></li>       
      
  
    <!-- ################################################################################################ -->
  </nav>
</div> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <!--
    <div class="sidebar one_quarter first"> 
     
      <h6>DATABASE TOPICS</h6>
      <nav class="sdb_holder">
        <ul>
          <li><a href=""><p  style="font-size:20px;color:purple;font-weight:bold;">The Basic(Flat) Relational Model</p></a></li>
            <li><a href=""><p  style="font-size:20px;color:purple;font-weight:bold;">SQL:Data Defination,Constraints</p></a></li>
            
          <li><a href=""><p  style="font-size:20px;color:purple;font-weight:bold;">SQL:Advanced Queries,Asserions ,Triggers</p></a></li>
    </div>
    -->
       
      
      <div id="form">
        <h2>POST QUESTION</h2>
        <form action="" method="post">
          <div class="one_third first">
            <label for="name">Name <span>*</span></label>
            <input type="text" name="name" id="name" value="" size="10" required>
          </div>
          <div class="one_third">
            <label for="email">Mail <span>*</span></label>
            <input type="email" name="email" id="email" value="" size="10" required>
          </div>
          <div class="block clear">
            <label for="comment">Your QUESTION</label>
            <textarea name="question" id="comment" cols="50" rows="3"></textarea>
            <input type="submit" value="post" name="Post Question" style="background-image: repeating-linear-gradient(#ff6666,#ffcccc);"/>
          </div>
        </form>
            <br> 
            <%
         
    if(request.getMethod().equalsIgnoreCase("post"))
    {
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String question=request.getParameter("question");
       
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/revastudentforum","root","");
        PreparedStatement ps=con.prepareStatement("insert into databaseques(name,email,question) values(?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, question);
      
       
        int i =ps.executeUpdate();
        if(i>0)
        out.println("success");
        else
            out.println("failed to register");
            }
                
    
       %>
          
       </div>
    
         

                    <%
            Class.forName("com.mysql.jdbc.Driver");
        Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/revastudentforum","root","");
        Statement statement=connection.createStatement();
       
         ResultSet rs =statement.executeQuery("select * from databaseques");
%>
     

    
          <div class="one_third first">
              
              <div id="forms">
                  <h2>POST ANSWER</h2>
                  <form action="databaseans.jsp" method="post">
            <label for="name">Name <span>*</span></label>
            <input type="text" name="name" id="name" value="" size="10" required>
            
            <label for="email">Mail <span>*</span></label>
            <input type="email" name="email" id="email" value="" size="10" required>
            
            <center>
                <h6>select question</h6>
                <select name="question">
                    <% 
                        while(rs.next()){
                            %>
                            <option value="<%=rs.getString("question")%>">
                                <%=rs.getString("question")%>
                            </option>
                            <%
                        }
                        %>
                </select>
            </center>   
                <textarea name="answer" id="comment" cols="50" rows="3" required="answer"></textarea>
            <input type="submit" value="Post" style="background-image: repeating-linear-gradient(#ff6666,#ffcccc);"/>
              </form>
          </div>
              
          </div>
           
 
          

                                 
        <%
            Class.forName("com.mysql.jdbc.Driver");
        Connection connection2=DriverManager.getConnection("jdbc:mysql://localhost:3306/revastudentforum","root","");
        Statement statement2=connection2.createStatement();
       
         ResultSet  rs2 =statement2.executeQuery("select * from databaseans");
       
        while(rs2.next())
        {        
            %>    
     <div class="content three_quarter">              
            <div id="formss">
                <textarea name="question" id="comment" cols="50" rows="11">
                   Name:<%= rs2.getString("name")%>&nbspEmail:<%= rs2.getString("email")%>
                   Question:<%= rs2.getString("question")%>
                   Answer: <%= rs2.getString("answer")%>
                </textarea>
            </div>
     </div>
                <%
}
%>
      </div>

      
      
       
       
          
      
  
      
           
<br>
<br>
<br>
        
        
        
  
    
    
    
    
    
    
    
    
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="../layout/scripts/jquery.min.js"></script>
<script src="../layout/scripts/jquery.backtotop.js"></script>
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>