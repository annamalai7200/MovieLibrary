<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #b15e5e;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: center;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            background-color: #3498db;
            color: #fff;
            border-radius: 5px;
            transition: background-color 0.3s;
            cursor: pointer;
            margin: 10px;
        }

        .button:hover {
            background-color: #2980b9;
        }
    </style>
<body>
 <h1>Wellcome User</h1>
	<a href="userlogin.jsp" class="button" id="loginButton">User Login</a>
        <a href="usersignup.jsp" class="button" id="signupButton">User Signup</a>
</body>
</html>