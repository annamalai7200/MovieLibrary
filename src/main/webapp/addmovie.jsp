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

</head>
<body>

	<div id="container">
<h1>AddMovie</h1>
 <form action="savemovie" method="post"  enctype="multipart/form-data">
	
 <div class="form">
                <label for="movieid">MovieId : </label>
                <input type="number" name="movieid" id="movieid" required><br>
            </div>
            <div class="form">
                <label for="moviename">MovieName : </label>
                <input type="text" name="moviename" id="moviename" required><br>
            </div>
            <div class="form">
                <label for="movieprice">MoviePrice : </label>
                <input type="number" name="movieprice" id="movieprice" required><br>
            </div>
            <div class="form">
                <label for="movierating">MovieRating : </label>
                <input type="number" name="movierating" id="movierating" required><br>
            </div>
           
            <div class="form">
                <label for="moviegenre">MovieGenre: </label>
                <input type="text" name="moviegenre" id="moviegenre" required>
            </div>
            <div class="form">
                <label for="movielanguage">Movielanguage : </label>
                <input type="text" name="movielanguage" id="movielanguage" required><br>
            </div>
            <div class="form">
                <label for="movieimage">MovieImage : </label>
                <input type="file" name="movieimage" id="movieimage" required><br>
            </div>
            
            <div class="form">
                <button type="submit">Submit</button>
            </div>
	
</form>
</body>
</html>