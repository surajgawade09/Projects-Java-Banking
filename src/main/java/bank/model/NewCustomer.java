package bank.model;

public class NewCustomer {

	private int AccountNo;
	private String CustomerName;
	private String UserName;
	private String Passoword;
	private float AccountBalance;
	public NewCustomer(int accountNo, String customerName, String userName, String passoword, float accountBalance) {
		super();
		AccountNo = accountNo;
		CustomerName = customerName;
		UserName = userName;
		Passoword = passoword;
		AccountBalance = accountBalance;
	}
	public int getAccountNo() {
		return AccountNo;
	}
	public void setAccountNo(int accountNo) {
		AccountNo = accountNo;
	}
	public String getCustomerName() {
		return CustomerName;
	}
	public void setCustomerName(String customerName) {
		CustomerName = customerName;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPassoword() {
		return Passoword;
	}
	public void setPassoword(String passoword) {
		Passoword = passoword;
	}
	public float getAccountBalance() {
		return AccountBalance;
	}
	public void setAccountBalance(float accountBalance) {
		AccountBalance = accountBalance;
	}
	
}
