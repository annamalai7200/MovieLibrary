<%@page import="movielibrarydto.Movie"%>
<%@page import="java.util.Base64"%>
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
<%HttpSession Session=request.getSession();%>
<% String adminname=(String )Session.getAttribute("adminname");%>

<% Movie m = (Movie)request.getAttribute("movie"); %>
<%if(adminname!=null) {%>
	<form action="updatemovie" method="post"  enctype="multipart/form-data">
	
 <div class="form">
                <label for="movieid">MovieId : </label>
                <input type="number" name="movieid" id="movieid" required value="<%= m.getMovieid()%>" readonly><br>
            </div>
            <div class="form">
                <label for="moviename">MovieName : </label>
                <input type="text" name="moviename" id="moviename" required value="<%= m.getMoviename()%>"><br>
            </div>
            <div class="form">
                <label for="movieprice">MoviePrice : </label>
                <input type="number" name="movieprice" id="movieprice" required value="<%= m.getMovieprice()%>"><br>
            </div>
            <div class="form">
                <label for="movierating">MovieRating : </label>
                <input type="number" name="movierating" id="movierating" required  value="<%= m.getMovierating()%>"><br>
            </div>
           
            <div class="form">
                <label for="moviegenre">MovieGenre: </label>
                <input type="text" name="moviegenre" id="moviegenre" required value="<%= m.getMoviegenre()%>"><br>
            </div>
            <div class="form">
                <label for="movielanguage">Movielanguage : </label>
                <input type="text" name="movielanguage" id="movielanguage" required value="<%= m.getMovielanguage()%>"><br>
            </div>
            <div class="form">
                <label for="movieimage">MovieImage : </label>
                <input type="file" name="movieimage" id="movieimage" required value="<%= m.getMovieimage()%>"><br>
            </div>
            
            <div class="form">
                <button type="submit">Submit</button>
            </div>
		
		
		<% String base64image = new String(Base64.getEncoder().encode(m.getMovieimage())); %>
		<img  src="data:image/jpeg;base64 , <%= base64image %>" height="150px" width="100px" >
	</form>
	<%}else{ %>
	<%RequestDispatcher rd=request.getRequestDispatcher("alogin.jsp");%>
	<%rd.include(request, response);%>
	<%}%>
	
	
</body>
</html>