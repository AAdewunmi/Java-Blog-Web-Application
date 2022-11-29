<%-- 
    Document   : findname1
    Created on : 29 Nov 2022, 16:29:52
    Author     : adrianadewunmi
--%>

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String n=request.getParameter("val");
System.out.println(n);
if(n.length()>0){
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/JavaBlogDB", "root", "abc");

PreparedStatement ps=con.prepareStatement("select * from forumreg where email ='"+n+"'");
//ps.setString(1,n);
out.print("<br>");
ResultSet rs=ps.executeQuery();
if(rs.next()){
out.print("<font style='color:red'>Already Exist</font>");
}



con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>
