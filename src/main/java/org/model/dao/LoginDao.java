package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.misc.ConnectionProvider;
import org.model.bean.UserBean;

public class LoginDao {
	private String uName;
	
public String userName() {
	return uName;
}
	
public boolean login(UserBean bean)
{
	String email=bean.getEmail();
	String pass=bean.getPass();
	Connection con;
	PreparedStatement pstm;
	ResultSet rs;
	boolean status=false;
	try
	{
		con=ConnectionProvider.createC();
		pstm=con.prepareStatement("select * from user where Email=? and Password=?");
		pstm.setString(1, email);
		pstm.setString(2, pass);
		rs=pstm.executeQuery();
		System.out.println(rs);

		status=rs.next();
		System.out.println(status);
		
		// for sending the username 
		uName = (rs.getString("Name"));
		System.out.println(uName);
		
	}catch(Exception e) {}
	return status;
}
}
