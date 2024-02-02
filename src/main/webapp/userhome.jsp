<%@page import="java.util.Base64"%>
<%@page import="movielibrarydto.Movie"%>
<%@page import="java.util.List"%>
<%@page import="movielibrarydto.Movie"%>
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
<h1> welcome Home page</h1>
<%List<Movie> movie=(List)request.getAttribute("movies") ;%>
<table border="2px">
<tr>
 <th>id</th>
 <th>name</th>
 <th>genre</th>
 <th>price</th>
 <th>language</th>
 <th>image</th>
 <th>Option</th>
</tr>
<%for(Movie m:movie){ %>
<tr>
<td><%=m.getMovieid()%></td>
<td><%=m.getMoviename()%></td>
<td><%=m.getMoviegenre() %></td>
<td><%=m.getMovieprice()%></td>
<td><%=m.getMovielanguage() %></td>
<% String base64image=new String(Base64.getEncoder().encode(m.getMovieimage())); %>
<td><img src="data:image/jpeg;base64,<%=base64image %>" height="150px" width="150px"></td> 
<td>
<a href="buy?id=<%=m.getMovieid()%>">BUY</a> </td>
	</tr>
	
	<% } %>
</table>

<a href="userlogout">LogOut</a>
</body>
</html>