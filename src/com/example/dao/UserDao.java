package com.example.dao;

import java.sql.PreparedStatement;

import com.example.model.User;

public class UserDao {

	
	public int insert(User u){
	int i=0;
		try{
			PreparedStatement ps=Dao.getCon().prepareStatement("insert into student(name,email,roll,mob,pass,gender) values(?,?,?,?,?,?)");
			ps.setString(1,u.getName());
			ps.setString(2,u.getEmail());
			ps.setString(3,u.getRoll());
			ps.setString(4,u.getMob());
			ps.setString(5,u.getPass());
			ps.setString(6,u.getGender());
			
			i=ps.executeUpdate();
		}catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}
	
	
	}

