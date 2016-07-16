package packs.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;

@Entity
public class Register {
	@NotNull
	String name;
	@Email @NotNull(message="Please enter your mailing address")
	String email;
	String location;
	@NotNull(message="Please enter your secret code")
	String password;
	
	int age;
	int role=1;
	boolean active=true;
	String BasicInfo;
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getBasicInfo() {
		return BasicInfo;
	}
	public void setBasicInfo(String BasicInfo) {
		this.BasicInfo = BasicInfo;
	}	
}
