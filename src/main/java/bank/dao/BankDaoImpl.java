package bank.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import bank.connection.DBConnection;

import bank.model.ExistingCustomer;
import bank.model.NewCustomer;

public class BankDaoImpl implements BankDao{
	DBConnection connect=new DBConnection();
	PreparedStatement pstate;
	List<ExistingCustomer> lstarrE=new ArrayList<ExistingCustomer>();
	List<NewCustomer> lstarrN=new ArrayList<NewCustomer>();
	List<NewCustomer> lstlinN=new LinkedList<NewCustomer>();
	ResultSet result;
	Statement state;
	Connection con=null;
	int i=0;


	public Boolean validateUser(ExistingCustomer obj) {
		Boolean b=false;
		try {
			con=connect.myconnection();
			pstate=con.prepareStatement("select * from BankRegister where user_name=? and password=?");
			pstate.setString(1,obj.getUsername());
			pstate.setString(2,obj.getPassword());
			result=pstate.executeQuery();
			if(result.next())
			{
				b=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		return b;
	}


	@Override
	public int RegisterUser(NewCustomer obj) {
		con=connect.myconnection();
		try {
			pstate=con.prepareStatement("insert into bankRegister values(?,?,?,?,?)");
			pstate.setInt(1, obj.getAccountNo());
			pstate.setString(2, obj.getCustomerName());
			pstate.setString(3, obj.getUserName());
			pstate.setString(4, obj.getPassoword());
			pstate.setFloat(5, obj.getAccountBalance());
			i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}


	@Override
	public List<NewCustomer> SearchUser(int accno) {
		try {
			con=connect.myconnection();
			pstate=con.prepareStatement("select * from Bankregister where Account_no=?");
			pstate.setInt(1, accno);
			result=pstate.executeQuery();
			if(result.next())
			{
				lstarrN.add(new NewCustomer(result.getInt(1),result.getString(2),result.getString(3),result.getString(4),result.getFloat(5)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lstarrN;
	}


	@Override
	public int UpdateUser(int accno, String username,String password) {
		try {
			con=connect.myconnection();
			pstate=con.prepareStatement("update BankRegister set user_name=?,password=? where Account_no=?");
			pstate.setString(1, username);
			pstate.setString(2, password);
			pstate.setInt(3, accno);
			i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}


	@Override
	public int DeleteUser(int accno) {
		try {
			Connection con=connect.myconnection();
			pstate=con.prepareStatement("delete from Bankregister where Account_no=?");
			pstate.setInt(1, accno);
			i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}


	@Override
	public List<NewCustomer> DisplayAllUser() {
		try {
			Connection con=connect.myconnection();
			String str="select * from bankregister";
			state=con.createStatement();
			result=state.executeQuery(str);
			while(result.next())
			{
				lstlinN.add(new NewCustomer(result.getInt(1),result.getString(2),result.getString(3),result.getString(4), result.getFloat(5)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lstlinN;
	}

}
