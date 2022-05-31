<%@ page import="java.util.ArrayList" %>
<%@ page import="lk.fadesign.employee.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<% ArrayList users = (ArrayList)request.getAttribute("listUser"); %>
<html>
<head>
    <title>User Management Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="new">Add New User</a>
        &nbsp;&nbsp;&nbsp;
        <a href="list">List All Users</a>

    </h2>
</center>
    <div class="container">
        <h1 class="display-4">
            <%= users.size() %>

        </h1>
        <table class="table table-striped">
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
            </tr>


            <% for (int count = 0; count < users.size(); count++){ %>
            <tr>
                <% User user = (User) users.get(count); %>
                <td> <%= user.getId() %> </td>
                <td> <%= user.getName() %> </td>
                <td> <%= user.getEmail() %> </td>
                <td> <%= user.getCountry() %> </td>
            </tr>
            <% } %>
        </table>
    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>