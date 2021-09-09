package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;

@Entity
@Table(name = "users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private Integer id;
	@Column(length = 20, name = "first_name")
	@Length(min = 3, max = 15,message = "Invalid First Name")
	private String firstName;
	@Column(length = 20, name = "last_name")
	@Length(min = 3, max = 15, message = "Invalid Last Name")
	private String lastName;
	@Column(length = 35, unique = true)
	@NotBlank(message = "Email is required")
	@Email(message = "Invalid email format")
	private String email;
	@Column(length = 20, nullable = false)
	@Pattern(regexp = "((?=.*\\d)(?=.*[a-z])(?=.*[#@$*]).{5,20})", message = "Blank or Invalid Password")
	private String password;
	@Column(length = 10, name = "mobile_no")
	@Pattern(regexp = "(^[7-9][0-9]{9}$)", message = "Blank or Invalid Phone Number")
	private String phone;
	@Column(length = 50, nullable = false)
	@NotBlank(message = "Address is required")
	private String address;
	@Column(length = 20, nullable = false)
	@NotBlank(message = "Zone is required")
	private String zone;
	@Column(length = 20, nullable = false)
	@NotBlank(message = "City is required")
	private String city;
	@Column(length = 20, nullable = false)
	@NotBlank(message = "State is required")
	private String state;
	@Enumerated(EnumType.STRING)
	private Role role;
	public User() {

	}

	public User(String firstName, String lastName, String email, String password, String phone, String address,String zone, String city, String state, Role role) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.address = address;
		this.zone = zone;
		this.city = city;
		this.state = state;
		this.role = role;
	}
	
	

	public User(String firstName, String lastName,String email,String phone) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getZone() {
		return zone;
	}

	public void setZone(String zone) {
		this.zone = zone;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return " First Name=" + firstName + "\nLast Name=" + lastName + "\nemail=" + email
				+"\nphone=" + phone + "\naddress=" + address + "\nzone=" + zone + "\ncity="
				+ city + "\nState :" + state;
	}
	
	

}
