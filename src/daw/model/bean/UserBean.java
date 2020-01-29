package daw.model.bean;

public class UserBean {
	private int id;
	private String username;
	private String password;
	private String firstName;
	private String lastName;
	public boolean valid;

	public int getUser_Id() {
		return id;
	}
	
	public void setUser_Id(int id) {
		this.id=id;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean valid) {
		this.valid = valid;
	}

	public void removePassword() {
		password = null;
		} 
	public void removeUserName() {
		username = null;
		}
		public void removeLastName() {
		lastName = null;
		}
		public void removeFirstName() {
		firstName = null;
		}


}
