<%@page import="java.util.Base64"%>
<%@page import="movielibrarydto.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
img {
higtht="100px" ;
with="100px";
}
</style>
</head>
<body>
<h1> wellcome Home page</h1>
<%List <Movie> movie=(List)request.getAttribute("movies") ;%>
<table border="2px">
<tr>
 <th>id</th>
 <th>name</th>
 <th>price</th>
 <th>rating</th>
 <th>genre</th>
 <th>language</th>
 <th>image</th>
 <th>delete</th>
</tr>
<%for(Movie m:movie){ %>
<tr>
<td><%=m.getMovieid()%></td>
<td><%=m.getMoviename()%></td>
<td><%=m.getMovieprice()%></td>
<td><%=m.getMovierating() %></td>
<td><%=m.getMoviegenre() %></td>
<td><%=m.getMovielanguage() %></td>
<% String base64image=new String(Base64.getEncoder().encode(m.getMovieimage())); %>
<td><img src="data:image/jpeg;base64,<%=base64image %>" height="150px" width="200px"></td> 
<td>
<a href="deletemovie?id=<%=m.getMovieid()%>">delete</a> </td>
	<td><a href="editmovie?id=<%=m.getMovieid()%>">edit</a> </td>
	</tr>
	
	<% } %>
</table>
<a href="addmovie.jsp">Add Movie</a>
</body>
</html>