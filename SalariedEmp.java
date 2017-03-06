import java.util.Date;

public class SalariedEmp extends Employee {
	private double bonus;
	private int leaves;

	public SalariedEmp(int x) {
		super(x);
	}

	public SalariedEmp(String nm, int a, String bd, String no, String desg, String dept, double sal,double bonus,int leaves) 
	{
		super(nm, a, bd, no, desg, dept, sal);
		this.bonus = bonus ;
		this.leaves =  leaves;
	}
	public double calculateSal() {
		double k=1.1*this.getSal()+this.bonus;
		return k;
	}

	@Override
	public String toString() {
		return super.toString()+"\n bonus=" + bonus + "\n leaves=" + leaves;
	}

	public double getBonus() {
		return bonus;
	}

	public void setBonus(double bonus) {
		this.bonus = bonus;
	}

	public int getLeaves() {
		return leaves;
	}

	public void setLeaves(int leaves) {
		this.leaves = leaves;
	}


}
