package org.llin.demo.northwind.data.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = _EntityNames.ROLE_USER_DETAIL)
public class RoleUserDetail {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private int role_id;
	private int user_detail_id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRole_id() {
		return role_id;
	}

	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}

	public int getUser_detail_id() {
		return user_detail_id;
	}

	public void setUser_detail_id(int user_detail_id) {
		this.user_detail_id = user_detail_id;
	}

	@Override
	public String toString() {
		return "RoleUserDetail [id=" + id + ", role_id=" + role_id + ", user_detail_id=" + user_detail_id + "]";
	}

}
