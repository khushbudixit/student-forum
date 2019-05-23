 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%
            Class.forName("com.mysql.jdbc.Driver");
        Connection connection1=DriverManager.getConnection("jdbc:mysql://localhost:3306/revastudentforum","root","");
        Statement statement1=connection1.createStatement();
       
         ResultSet rs1 =statement1.executeQuery("select * from databaseques");
       
   
%>
