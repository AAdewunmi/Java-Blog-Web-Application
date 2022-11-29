<%-- 
    Document   : findname3
    Created on : 29 Nov 2022, 16:51:42
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


PreparedStatement ps=con.prepareStatement("select userpass from forumreg where email ='"+n+"'");
//ps.setString(1,n);
out.print("<br>");
ResultSet rs=ps.executeQuery();
if(rs.next()){
String email=rs.getString(1);
out.print("<font style='color:green;' size='3'>Your Password is:  "+email+"</font>");
out.print("<br/><br/><a href='index.jsp'><font style='color:maroon;' size='3'>Login Again</font></a>");

}
con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>
