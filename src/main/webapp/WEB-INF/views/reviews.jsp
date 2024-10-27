<%--
  Created by IntelliJ IDEA.
  User: WanZa
  Date: 2024/05/17
  Time: 23:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Review</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <style>
    body {
      background-color: #f8f9fa;
      font-family: Arial, sans-serif;
    }
    .container {
      max-width: 600px;
      margin: 50px auto;
      padding: 20px;
      background-color: #ffffff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
    }
    h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #333333;
    }
    input[type="text"], textarea {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #dddddd;
      border-radius: 4px;
    }
    button[type="submit"] {
      width: 100%;
      padding: 10px;
      background-color: #007bff;
      border: none;
      border-radius: 4px;
      color: #ffffff;
      font-size: 16px;
      cursor: pointer;
    }
    button[type="submit"]:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
<div class="container">
  <h2>Review</h2>
  <form action="http://localhost:3423/Review" method="POST">
    <input type="text" name="name" class="form-control" placeholder="Enter your name">
    <textarea name="message" class="form-control" placeholder="Write a message" cols="12" rows="7"></textarea>
    <button type="submit" class="btn btn-primary mt-3">SEND</button>
  </form>
</div>
</body>
</html>
