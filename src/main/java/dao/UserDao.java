package dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;

import movielibrarydto.Movie;
import movielibrarydto.User;

public class UserDao
{ 
	public Connection getConnection() throws ClassNotFoundException,SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/movielibrary","root","root");
		
	}
	public int saveUser(User user) throws ClassNotFoundException,SQLException
	{
		Connection conn=getConnection();
		PreparedStatement pst=conn.prepareStatement("insert into user values(?,?,?,?,?)");
		pst.setInt(1, user.getUserid());
		pst.setString(2,user .getUsername());
		pst.setLong(3,user.getUsercontact());
		pst.setString(4,user.getUseremail());
		pst.setString(5,user.getUserpassword());
		return pst.executeUpdate();
	}
	public User findByEmail(String uemail) throws  ClassNotFoundException,SQLException
	{
		Connection con =getConnection();
		
		PreparedStatement pst = con.prepareStatement("select * from user where useremail=?");
		pst.setString(1, uemail); 
		
		ResultSet rs = pst.executeQuery();

		rs.next();
		
		User user=new User();
		user.setUserid(rs.getInt(1));
		user.setUsername(rs.getString(2));
		user.setUsercontact(rs.getLong(3));
		user.setUseremail(rs.getString(4));
		user.setUserpassword(rs.getString(5));
		
		return user;
		
	}
	public List<Movie>getAllMovie()throws ClassNotFoundException,SQLException
	{
		Connection conn=getConnection();
		PreparedStatement pst=conn.prepareStatement("select * from movie");
		ResultSet rs=pst.executeQuery();
		 
		List<Movie>movies=new ArrayList<Movie>();
		while(rs.next())
		{
			Movie m=new Movie();
			m.setMovieid(rs.getInt(1));
			m.setMoviename(rs.getString(2));
			m.setMovieprice(rs.getDouble(3));
			m.setMovierating(rs.getDouble(4));
			m.setMoviegenre(rs.getString(5));
			m.setMovielanguage(rs.getString(6));
			
			Blob  b=rs.getBlob(7);
			byte []img=b.getBytes(1,(int)b.length() );
			m.setMovieimage(img);
			movies.add(m);
			
			
		}
		return movies;
			
	}
}
