<%@page import="Tbook.UserDao"%>
<jsp:useBean id="u" class="Tbook.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDao.delete(u);
response.sendRedirect("viewusers.jsp");
%>