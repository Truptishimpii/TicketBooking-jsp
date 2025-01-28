<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
<%@page import="Tbook.UserDao,Tbook.User"%>

<%
String id=request.getParameter("id");
User u=UserDao.getRecordById(Integer.parseInt(id));
%>
<jsp:include page="header.html"></jsp:include>
 <div class="col-lg-6 mx-auto">
 <h4 class="display-5 fw-bold text-body-emphasis">Edit User</h4>
    <form action="edituser.jsp" method="post">
    <input type="hidden" name="id" value="<%=u.getId() %>"/>
      <div class="mb-3">
      
      <!-- Username -->
    <div class="mb-3">
      <label for="username" class="form-label">Username:</label>
      <input type="text" class="form-control" id="username" name="username" required>
    </div>

    <!-- Destination -->
    <div class="mb-3">
      <label for="destination" class="form-label">Destination/Event:</label>
      <select class="form-select" id="destination" name="destination" required>
        <option value="" disabled selected>Select a destination</option>
        <option value="Concert">Concert</option>
        <option value="Theater">Theater</option>
        <option value="Sports Event">Sports Event</option>
        <option value="Conference">Conference</option>
        <option value="Festival">Festival</option>
        <option value="Exhibition">Exhibition</option>
        <!-- Add more destinations here if necessary -->
      </select>
    </div>

    <!-- Date -->
    <div class="mb-3">
      <label for="date" class="form-label">Event Date:</label>
      <input type="date" class="form-control" id="date" name="date" required>
    </div>

    <!-- Quantity -->
    <div class="mb-3">
      <label for="quantity" class="form-label">Number of Tickets:</label>
      <input type="number" class="form-control" id="quantity" name="quantity" min="1" required>
    </div>

    <!-- Gender -->
    <div class="mb-3">
      <label class="form-label">Gender:</label><br>
      <div class="form-check form-check-inline">
        <input type="radio" class="form-check-input" id="male" name="gender" value="male" required>
        <label class="form-check-label" for="male">Male</label>
      </div>
      <div class="form-check form-check-inline">
        <input type="radio" class="form-check-input" id="female" name="gender" value="female" required>
        <label class="form-check-label" for="female">Female</label>
      </div>
      <div class="form-check form-check-inline">
        <input type="radio" class="form-check-input" id="other" name="gender" value="other" required>
        <label class="form-check-label" for="other">Other</label>
      </div>
    </div>

    <!-- Submit Button -->
   <button type="submit" class="btn btn-primary">Edit User</button>
    </form>
</div>