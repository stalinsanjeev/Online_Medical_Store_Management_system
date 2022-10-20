
public class member 
{

	private String name,email,phonenumber,password,gender,state;

	public member(String name, String email, String phonenumber, String password, String gender, String state) {
		super();
		this.name = name;
		this.email = email;
		this.phonenumber = phonenumber;
		this.password = password;
		this.gender = gender;
		this.state = state;
	}

	public member() {
		super();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	
}
