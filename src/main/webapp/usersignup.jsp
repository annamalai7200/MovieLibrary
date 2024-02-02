<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
           
           background-color: #aab67e;
           display: flex;
           align-items: center;
           justify-content: center;
           line-height: 20px;
           height: 100vh;
           
       }
       h2{
            text-align: center;
            color: #494111;
        }
       #container {
            background-color: #76a36c;
            padding: 20px;
            border-radius: 40px;
            width: 340px;
            border: 2px solid rgb(165, 184, 57);
        }
        .form {
            margin-bottom: 15px;
        }
        .form label {
            display: block;
            font-weight: bolder;
            margin-bottom: 5px;
            
        }
        .form input {
            width: 90%;
            padding: 10px;
            /* box-sizing: border-box; */
            border: 1px solid #ddc4c4;
            border-radius: 5px;
        }

        .form button {
            width: 100%;
            padding: 10px;
            background-color: #536914;
            color: #350c0c;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            
            
        }
        .form button:hover {
            background-color: #035314;
        }
        .form p{
            text-align: center;
        }
	</style>
</style>
</head>
<body>
<div id="container">
<h1>User SignUp</h1>
 <form action="usersignup" >
	
 <div class="form">
                <label for="uId">Id : </label>
                <input type="number" name="uid" id="uId" required><br>
            </div>
            <div class="form">
                <label for="uName">Name : </label>
                <input type="text" name="uname" id="uName" required><br>
            </div>
            <div class="form">
                <label for="uContact">Contact : </label>
                <input type="tel" name="ucontact" id="uContact" required><br>
            </div>
            <div class="form">
                <label for="uEmail">Email : </label>
                <input type="email" name="uemail" id="uEmail" required><br>
            </div>
           
            <div class="form">
                <label for="uPass">PassWord : </label>
                <input type="password" name="upassword" id="uPass" required>
            </div>
            
            <div class="form">
                <button type="submit">Sign-Up</button>
            </div>
            <div class="form">
                <p id="footer">Do you have an account ? <a href="userlogin.jsp">LogIn!</a></p>

</body>
</html>