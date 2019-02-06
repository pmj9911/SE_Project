package com.placementcell.backend;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ControllerClass {	
	
	//forgot password	
	@RequestMapping(value="/updatedemail" , method= RequestMethod.POST)
	public ModelAndView forgotpassword(@RequestParam("update_email")String email,@RequestParam("update_username")String username)
	{
		ModelAndView model = new ModelAndView("updatedemail");   
		Connection myConn = null;
		PreparedStatement pstmt=null;
		ResultSet myRs = null;
		String emailFromDatabase="";
		boolean emailMatches=false;
		try {
			// 1. Get a connection to database
			Class.forName("com.mysql.jdbc.Driver");
			myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/logindetails?", "root" , "");
			
			//getting the  password from the database by matching the username
			pstmt= myConn.prepareStatement("SELECT emailAddress FROM userdetails WHERE username=? ");
			pstmt.setString(1, username);
			myRs = pstmt.executeQuery();

			//inserting the password obtained from database into a string
			if(myRs.next()) { 
				emailFromDatabase=myRs.getString("emailAddress");
				}
			emailMatches = email.equals(emailFromDatabase); 
			if(emailMatches)
			{
				 //procedure to send the mail will be done here
				model.addObject("signUpMessage", "new password will be sent on the given email address shortly!");
				model.addObject("webpageToGo", "forms2.html");
				model.addObject("whichWebpageToGo", "to the login page");
				
			}else
			{
				//print on the website that a wrong  email address has been entered
				model.addObject("signUpMessage","wrong email address entered!");
				model.addObject("webpageToGo", "fp.html");
				model.addObject("whichWebpageToGo", "back to the forgot password page");
			}
		}
		catch (Exception exc) {
			exc.printStackTrace();
     	}
		finally {
			if (myRs != null) {
				try {
					myRs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (myConn != null) {
				try {
					myConn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return model;
	}
	
	//user singup
	@RequestMapping(value="/forms2aftersignup" , method= RequestMethod.POST)
	public ModelAndView signin(@RequestParam("reg_username")String username, @RequestParam("reg_password")String password,
			@RequestParam("reg_email")String emailAddress,@RequestParam("reg_fullname")String fullName,
			@RequestParam("reg_gender")String gender,@RequestParam("reg_password_confirm")String passwordConfirm,
			@RequestParam("reg_profession")String profession,@RequestParam("reg_phoneNumber")String phoneNumber)
	{
		Connection myConn = null;
		Connection myConn2 = null;
		PreparedStatement pstmt=null;
		PreparedStatement pstmt2=null;
		ResultSet myRs = null;
	
		ModelAndView model=new ModelAndView("forms2aftersignup");
		boolean PasswordMatches=false;
		
		PasswordMatches = password.equals(passwordConfirm); 
		
		try {
			// 1. Get a connection to database
			Class.forName("com.mysql.jdbc.Driver");
			if(PasswordMatches)
			{
				myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/logindetails?", "root" , "");
				pstmt= myConn.prepareStatement(
					   "INSERT INTO  userdetails(username,password,emailAddress,fullName,gender,phoneNumber,profession)"
					   + " VALUES (?,?,?,?,?,?,?) ");
			
					pstmt.setString(1, username); 
					pstmt.setString(2, password);
					pstmt.setString(3, emailAddress);
					pstmt.setString(4, fullName);
					pstmt.setString(5, gender);
					pstmt.setString(6, phoneNumber);
					pstmt.setString(7, profession);
					pstmt.executeUpdate();
					
					myConn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/logindetails?", "root" , "");
					pstmt2= myConn2.prepareStatement("INSERT INTO  usermoredetails(username) VALUES (?) ");	
					pstmt2.setString(1, username); 
					pstmt2.executeUpdate();
					model.addObject("signUpMessage", "sign up is successful !");
			}else {
				model.addObject("signUpMessage", "sign up is unsuccessful(passwords do not match) !"
						+ "\n please sign up again");
			}
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
		finally {
			if (myRs != null) {
				try {
					myRs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (myConn != null) {
				try {
					myConn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return model;
	}
	
	//verifies the username and password which is input during the login either from the user or admin page
	
	@RequestMapping(value="/profile" , method= RequestMethod.POST)
	public ModelAndView loginuser(@RequestParam("inputUsername")String username, @RequestParam("inputPassword")String password)
	{
		ModelAndView model = new ModelAndView("profile");   
		Connection myConn = null;
		PreparedStatement pstmt=null;
		ResultSet myRs = null;
		String passwordFromDatabase="";
		boolean PasswordMatches=false;
		
		String emailAddress="";
		String fullName="";
		String gender="";
		String phoneNumber="";
		String profession="";
		
		try {
			// 1. Get a connection to database
			Class.forName("com.mysql.jdbc.Driver");
			myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/logindetails?", "root" , "");
			
			//getting the  password from the database by matching the username
			pstmt= myConn.prepareStatement("SELECT password , emailAddress , fullName , gender , phoneNumber"
					+ " ,profession FROM userdetails WHERE username=? ");
			pstmt.setString(1, username);
			myRs = pstmt.executeQuery();

			//inserting the password obtained from database into a string
			if(myRs.next()) { 
				passwordFromDatabase=myRs.getString("password");
				
				emailAddress=myRs.getString("emailAddress");
				fullName=myRs.getString("fullName");
				gender=myRs.getString("gender");
				phoneNumber=myRs.getString("phoneNumber");
				profession=myRs.getString("profession");
				}
			PasswordMatches = password.equals(passwordFromDatabase); 
			if(PasswordMatches)
			{
				 
				model.addObject("username", username);
				model.addObject("emailAddress", emailAddress);
				model.addObject("fullName", fullName);
				model.addObject("gender",gender);
				model.addObject("phoneNumber", phoneNumber);
				model.addObject("profession", profession);
				
			}else
			{
				//print on the website that a wrong  password has been entered!!
				//ModelAndView modelError=new ModelAndView("wel");
				
				ModelAndView model2 = new ModelAndView("loginagain");
				model2.addObject("errorstatus","password is incorrect!  please log in again!");
				return model2;
			}
		}
		catch (Exception exc) {
			exc.printStackTrace();
     	}
		finally {
			if (myRs != null) {
				try {
					myRs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (myConn != null) {
				try {
					myConn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return model;
	}
	
	@RequestMapping("/forms2")
	public ModelAndView UserLoginPage() {
 
		return new ModelAndView("forms2");
	}
	
	@RequestMapping("/fp")
	public ModelAndView forgotPasswordPage() {
 
		return new ModelAndView("fp");
	}
	
	@RequestMapping("/admin")
	public ModelAndView AdminLoginPage() {
		
		return new ModelAndView("admin");
	}
	
	/*@RequestMapping("/apply")
	public ModelAndView ApplyPage() {
		
		return new ModelAndView("apply");
	}*/
	
	@RequestMapping("/navign")
	public ModelAndView HomePage() {
 
		return new ModelAndView("navign");
	}
	
	@RequestMapping("/company")
	public ModelAndView Company() {
 
		return new ModelAndView("company");
	}
	
	@RequestMapping("/reg")
	public ModelAndView RegistrationFrom() {
 
		return new ModelAndView("reg");
	}
	
	@RequestMapping("/reg2")
	public ModelAndView RegistrationFrom2() {
 
		return new ModelAndView("reg2");
	}
	
}
