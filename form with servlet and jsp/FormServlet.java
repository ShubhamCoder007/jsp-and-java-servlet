package com.mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormServlet extends HttpServlet{

	static Connection dbcon = null;
	static PreparedStatement pst = null;
	static String url = "jdbc:mysql://localhost/mydb";
	static String username = "root";
	static String password = "RootUser@123";
	static String query = null;
	
	
	public static void connect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			dbcon = DriverManager.getConnection(url, username, password);
			dbcon.setAutoCommit(false);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			pst = dbcon.prepareStatement(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void disconnect() {
		if(dbcon != null) {
			try {
				dbcon.commit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				dbcon.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(pst != null) {
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	public static String encryptPassword(String s) {
		String st = "";
		char[] c = s.toCharArray();
		for(char ch: c) {
			st = st + (char)((int)ch + 8);
		}
		return st;
	}
	
	public static String decryptPassword(String s) {
		String st = "";
		char[] c = s.toCharArray();
		for(char ch: c) {
			st = st + (char)((int)ch - 8);
		}
		return st;
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException
	{
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String gender = req.getParameter("gender");
		String branch = req.getParameter("Branch");
		String mob = req.getParameter("mobileno");
		String mail = req.getParameter("mail");
		String address = req.getParameter("address");
		String password = req.getParameter("password");
		
		PrintWriter out = res.getWriter();
		out.println(firstname+" "+lastname+" "+gender);
		out.println(branch);
		out.println(mob+1);
		out.println(mail);
		out.println(address);
		out.println(password);
		
		
		query = "insert into myform values(null,?,?,?,?,?,?,?,?)";
		
		connect();
		
		try {
			pst = dbcon.prepareStatement(query);
			
			pst.setString(1, firstname);
			pst.setString(2, lastname);
			pst.setString(3, gender);
			pst.setString(4, branch);
			pst.setString(5, mob);
			pst.setString(6, mail);
			pst.setString(7, encryptPassword(password));
			pst.setString(8, address);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			pst.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		disconnect();
		out.println("Successfully entered!");
	}
	
}
