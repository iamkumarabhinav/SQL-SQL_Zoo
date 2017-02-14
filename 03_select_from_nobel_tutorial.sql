-- 1. Change the query shown so that it displays Nobel prizes for 1950.
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950

-- 2. Show who won the 1962 prize for Literature.
SELECT winner winner_1962
FROM nobel
WHERE yr = 1962
AND subject = 'Literature'

-- 3. Show the year and subject that won 'Albert Einstein' his prize.
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

-- 4. Give the name of the 'Peace' winners since the year 2000, including 2000.
SELECT winner winner_peace
FROM nobel
WHERE subject = 'Peace'
AND yr >= 2000

-- 5. Show all details (yr, subject, winner) of the Literature prize winners for
-- 1980 to 1989 inclusive.
SELECT *
FROM nobel
WHERE subject = 'Literature'
AND yr BETWEEN 1980 AND 1989

-- 6. Show all details of the presidential winners: ('Theodore Roosevelt',
-- 'Woodrow Wilson', 'Jed Bartlet', 'Jimmy Carter')
SELECT *
FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jed Bartlet',
  'Jimmy Carter')

-- 7. Show the winners with first name John
SELECT winner
FROM nobel
WHERE winner LIKE 'John%'

-- 8. In which years was the Physics prize awarded but no Chemistry prize.
-- (WARNING - this question is way too hard for this level, you will need to use
-- sub queries or joins).
SELECT DISTINCT p.yr
FROM nobel p
WHERE p.subject = 'Physics'
AND p.yr NOT IN
(
  SELECT c.yr
  FROM nobel c
  WHERE c.subject = 'Chemistry'
)
assignment 4



public class TestFileAssignment {

	public static void main(String[] args)
	{
		
	}
}


import java.util.Date;

abstract public class Person {
	static{
		
		count=0;
	}
	static int count;
	private int perId;
	private String perName;
	private int age;
	private Date bDate;
	private String mobNo;
	
	public Person(){
		count++;
		perId=count;
		perName=null;
		age=0;
		bDate=null;
		mobNo=null;
	}
	
	public Person(String nm,int a,Date bd,String no){
		count++;
		this.perId=count;
		perName=nm;
		age=a;
		bDate=bd;
		mobNo=no;
	}
	
	public void setPerId(int id){
		 perId=id;
	}
	
	public int getPerId(){
		return perId;
		
	}
	
	public String getPerName() {
		return perName;
	}

	public void setPerName(String perName) {
		this.perName = perName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getbDate() {
		return bDate;
	}

	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}

	public String getMobNo() {
		return mobNo;
	}

	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}
	public String toString(){
		return "Id : " +perId+ "\nName : "+perName
				+"\nAge :"+age +"\nB'Date" +bDate
				       +"\nMobile : "+mobNo;
	}
   
	public void display(){
		System.out.println("Id : "+this.perId);
		System.out.println("Name : "+perName);
		System.out.println("Age : "+age);
		System.out.println("B'Date : "+bDate);
		System.out.println("Mobile No : "+mobNo);
	}
}




import java.util.Date;


public abstract class Employee extends Person{
	private String desg;
	private String dept;
	private double sal;
	
	public Employee() {
		super();
	}
	public Employee(String nm,int a,Date bd,String no,String desg, String dept, double sal) {
		super(nm,a,bd,no);
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
	abstract public double calculateSal(double a,int b);
	
//	public double calculateSal(){
	//	return sal+0.10*sal+0.15*sal-0.5*sal;
//	}
	public String toString(){
		return super.toString()+"\nDesignation : " +desg +"Department : "
	                             +dept +"Salary : "+sal;
		
	}
	 

}



import java.util.Date;

public class ContractEmp extends Employee {

	private double dailyall;
	private int numdays;
	public ContractEmp() {
		super();
	}

	public ContractEmp(String nm, int a, Date bd, String no, String desg, String dept, double sal, double dailyall,int numdays)
	{
		super(nm, a, bd, no, desg, dept, sal);
		this.dailyall = dailyall ;
		this.numdays =  numdays;
	}

	public double calculateSal(double a,int b) {
		return a*b;
	}

	@Override
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




import java.util.Date;

public class Member extends Person {
	private String type;
	private int duration;
	

	public Member() {
		super();
	}

	public Member(String nm, int a, Date bd, String no,String type,int duration) {
		super(nm, a, bd, no);
		this.type = type ;
		this.duration = duration;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}
	public String toString(){
		return super.toString()+"\nMembership Type : " +type +"\nDuration : "
	                             +duration;
		
	}
	 

}




import java.util.Date;

public class SalariedEmp extends Employee {
	private double bonus;
	private int leaves;

	public SalariedEmp() {
		super();
	}

	public SalariedEmp(String nm, int a, Date bd, String no, String desg, String dept, double sal,double bonus,int leaves) 
	{
		super(nm, a, bd, no, desg, dept, sal);
		this.bonus = bonus ;
		this.leaves =  leaves;
	}
	public double calculateSal(double s,int b) {
		double k=1.1*s+b;
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
