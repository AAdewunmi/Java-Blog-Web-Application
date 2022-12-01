<%-- 
    Document   : logout
    Created on : 1 Dec 2022, 15:54:18
    Author     : adrianadewunmi
--%>

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<% 
session.invalidate();
%>
<jsp:forward page="index.jsp"></jsp:forward>
