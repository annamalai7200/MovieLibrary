<html>

<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #45a049;
            text-align: center;
            margin: 50px;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s;
        }

        .button:hover {
       
            background-color: #45a049;
        }

        #userButton {
            background-color: #3498db;
        }

        #adminButton {
            background-color: #e74c3c;
        }
    </style>

<body>
<h1>Wellcome To The MovieLibrary</h1>
<a href="user.jsp" class="button" id="userButton">User</a>
<a href="admin.jsp" class="button" id="adminButton">Admin</a>
</body>
</html>
