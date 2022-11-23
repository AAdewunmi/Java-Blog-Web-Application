<%-- 
    Document   : delete
    Created on : 23 Nov 2022, 16:13:26
    Author     : adrianadewunmi
--%>

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String n=request.getParameter("id");
System.out.println(n);

try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/JavaBlogDB", "root", "abc");
System.out.print(n);
PreparedStatement ps=con.prepareStatement("delete from forumrep where id='"+n+"'");
//ps.setString(1,n);
out.print("<br>");
int rs=ps.executeUpdate();

ps=con.prepareStatement("delete from forumadvc where rid='"+n+"'");
ps.executeUpdate();

con.close();
%>

<jsp:forward page="astatus.jsp"></jsp:forward>
<% 
}catch(Exception e){e.printStackTrace();}
%>
