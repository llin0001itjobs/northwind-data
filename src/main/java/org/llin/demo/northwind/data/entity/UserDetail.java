package org.llin.demo.northwind.data.entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = _EntityNames.USER_DETAIL)
public class UserDetail  {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@OneToMany(fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	@JoinTable(name = _EntityNames.ROLE_USER_DETAIL, 
		inverseJoinColumns = {@JoinColumn(name = "role_id") }, 
		       joinColumns = {@JoinColumn(name = "user_detail_id") })
	private List<Role> roles;
	
	private String username;

	private String password;

	private String email;
	
	private Boolean enabled;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Boolean isEnabled() {
		return enabled;
	}
	
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
		
	@Override
	public String toString() {
		return "User [id=" + id + ", roles=" + roles + ", username=" + username + ", password=" + password + ", email="
				+ email + ", enabled=" + enabled + "]";
	}
	
}
