<%--
  Created by IntelliJ IDEA.
  User: WanZa
  Date: 2024/05/17
  Time: 23:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      background-color: #f0f0f0;
    }
    .login-container {
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .login-container h2 {
      margin-bottom: 20px;
    }
    .login-container input {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    .login-container button {
      width: 100%;
      padding: 10px;
      background-color: #007BFF;
      border: none;
      color: white;
      border-radius: 5px;
      cursor: pointer;
    }
    .login-container button:hover {
      background-color: #0056b3;
    }
    .hide{
      display: none;
    }
  </style>
</head>
<body>
<div class="login-container">
  <h2>Login</h2>
  <form  action="http://localhost:3423/admin" method="POST" id="loginForm">
    <input type="text" id="username" name="username" placeholder="Admin" required>
    <input type="password" id="password" name="password" placeholder="Password" required>
    <button type="submit">Login</button>
    <span class="hide">Username Or Password Incorrect Try Again</span>
  </form>
</div>


</body>
</html>
