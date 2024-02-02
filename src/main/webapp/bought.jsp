<%@page import="java.util.Base64"%>
<%@page import="movielibrarydto.Movie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Movie Buying Successfull.</h1>
<%Movie m = (Movie)request.getAttribute("movie"); %>
<tr>
<td><%= m.getMovieid() %></td>
<td><%= m.getMoviename() %></td>
<td><%= m.getMoviegenre() %></td>
<td><%= m.getMovieprice() %></td>
<td><%= m.getMovierating() %></td>
<td><%= m.getMovielanguage() %></td>
<% String base64image=new String(Base64.getEncoder().encode(m.getMovieimage())); %>
<td><img src="data:image/jpeg;base64,<%=base64image %>" height="150px" width="200px"></td>
</tr>
</body>
</html>