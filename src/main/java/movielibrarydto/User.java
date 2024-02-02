package movielibrarydto;

public class User {
	private int userid;
	private  String username;
	private  Long usercontact;
	private  String useremail;
	private  String userpassword;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Long getUsercontact() {
		return usercontact;
	}
	public void setUsercontact(Long usercontact) {
		this.usercontact = usercontact;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

}
