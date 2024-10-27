<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.Model.Client" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Customer Reviews</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 20px;
    }
    th, td {
      border: 1px solid #ddd;
      padding: 8px;
      text-align: left;
    }
    th {
      background-color: #f2f2f2;
    }
  </style>
</head>
<body>
<h1>Appointments</h1>
<table id="customerTable">
  <thead>
  <tr>
    <th>Customer no</th>
    <th>Name</th>
    <th>Surname</th>
    <th>Haircut</th>
    <th>Amount Paid</th>
    <th>Appointment Date</th>
    <th>Option</th>
  </tr>
  </thead>
  <tbody>
  <%
    List<Client> ClientList = (List<Client>) request.getAttribute("ClientList");
    // Iterate over the reviews
    for (Client c : ClientList) {
  %>
  <tr>
  <td><%= c.getId()%> </td>
  <td><%= c.getName()%> </td>
  <td><%= c.getSurname()%> </td>
  <td><%= c.getHaircut()%> </td>
  <td>R<%= c.getAmountPaid()%> </td>
  <td><%= c.getAppointment_Date()%> </td>
  <td><form class="f" action="http://localhost:3423/delete" method="post"><input type='hidden' name='cus_id' value='<%= c.getId()%> '/> <button> Delete </button> </form> </td>
  </tr>
      <% } %>
  </tbody>
</table>


</body>
</html>
