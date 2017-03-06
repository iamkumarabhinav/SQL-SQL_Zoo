import java.util.Date;

public class ContractEmp extends Employee {

	private double dailyall;
	private int numdays;
	public ContractEmp(int x) {
		super(x);
	}

	public ContractEmp(String nm, int a, String bd, String no, String desg, String dept, double sal, double dailyall,int numdays)
	{
		super(nm, a, bd, no, desg, dept, sal);
		this.dailyall = dailyall ;
		this.numdays =  numdays;
	}

	public double calculateSal() {
		return this.dailyall*this.numdays;
	}
	public String toString() {
		return super.toString()+"\ndailyall=" + dailyall + "\n numdays=" + numdays;
	}

	public double getDailyall() {
		return dailyall;
	}

	public void setDailyall(double dailyall) {
		this.dailyall = dailyall;
	}

	public int getNumdays() {
		return numdays;
	}

	public void setNumdays(int numdays) {
		this.numdays = numdays;
	}

}
