<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
        if(request.getMethod().equalsIgnoreCase("post"))
    {
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String question=request.getParameter("question");
        String answer=request.getParameter("answer");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/revastudentforum","root","");
        PreparedStatement ps=con.prepareStatement("insert into databaseans(name,email,question,answer) values(?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, question);
        ps.setString(4,answer);
      int  i =ps.executeUpdate();
       if(i>0)
       {
       response.sendRedirect("databasefaq.jsp");
       }
                

    
   
        }
        %>
      
 <%
            Class.forName("com.mysql.jdbc.Driver");
        Connection connection1=DriverManager.getConnection("jdbc:mysql://localhost:3306/revastudentforum","root","");
        Statement statement1=connection1.createStatement();
       
         ResultSet rs1 =statement1.executeQuery("select * from databaseques");
       
      
%>

        
            <%
            Class.forName("com.mysql.jdbc.Driver");
        Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/revastudentforum","root","");
        Statement statement=connection.createStatement();
       
         ResultSet  rs =statement.executeQuery("select * from databaseans");
         
       
                
            %>

           