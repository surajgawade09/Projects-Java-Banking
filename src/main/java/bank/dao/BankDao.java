package bank.dao;

import java.util.List;

import bank.model.ExistingCustomer;
import bank.model.NewCustomer;

public interface BankDao {

	Boolean validateUser(ExistingCustomer obj);
	int RegisterUser(NewCustomer obj);
	List<NewCustomer> SearchUser(int accno);
	int UpdateUser(int accno,String username,String password);
	int DeleteUser(int accno);
	List<NewCustomer> DisplayAllUser();
}
