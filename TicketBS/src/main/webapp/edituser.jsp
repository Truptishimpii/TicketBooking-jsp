<%@page import="Tbook.UserDao"%>
<jsp:useBean id="u" class="Tbook.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDao.update(u);
response.sendRedirect("viewusers.jsp");
%>