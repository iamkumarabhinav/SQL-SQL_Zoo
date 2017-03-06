
public abstract class Employee extends Person {
	private String desg; 
	private String dept;
	private double sal;
	public Employee() {
		super();
	}
	public Employee(String name,int a,String bd,String pr,String desg, String dept, double sal) {
		super(name,a, bd,pr);
		this.desg = desg;
		this.dept = dept;
		this.sal = sal;
	}
	public String getDesg() {
		return desg;
	}
	public void setDesg(String desg) {
		this.desg = desg;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public double getSal() {
		return sal;
	}
	public void setSal(double sal) {
		this.sal = sal;
	} 
	public String toString(){
		return super.toString()+"\nDesignation :"+desg+"\ndepartment "+dept +"\nsalary  :"+sal;
	}
	public double calculateSal(){
		return sal+0.10*sal-0.5*sal;
	}
	
}
