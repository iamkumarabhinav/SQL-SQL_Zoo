-- 1. List each country name where the population is larger than 'Russia'.
SELECT name country
FROM world
WHERE population >
(
  SELECT population FROM world
  WHERE name='Russia'
)

-- 2. List the name and continent of countries in the continents containing
-- 'Belize', 'Belgium'.
SELECT a.name country, a.continent
FROM world a
WHERE a.continent IN
(
  SELECT b.continent
  FROM world b
  WHERE b.name IN ('Belize', 'Belgium')
)

-- 3. Show the countries in Europe with a per capita GDP greater than
-- 'United Kingdom'.
SELECT a.name country
FROM world a
WHERE a.continent = 'Europe'
AND a.gdp/a.population >
(
  SELECT b.gdp/b.population
  FROM world b
  WHERE b.name = 'United Kingdom'
)

-- 4. Which country has a population that is more than Canada but less than
-- Poland? Show the name and the population.
SELECT a.name country, a.population
FROM world a
WHERE a.population >
(
  SELECT b.population
  FROM world b
  WHERE b.name = 'Canada'
)
AND a.population <
(
  SELECT c.population
  FROM world c
  WHERE c.name = 'Poland'
)

-- 5. Which countries have a GDP greater than any country in Europe? [Give the
-- name only.]
SELECT a.name country
FROM world a
WHERE a.gdp > ALL
(
  SELECT b.gdp
  FROM world b
  WHERE b.continent = 'Europe'
)

-- 6. Find the largest country (by area) in each continent, show the continent,
-- the name and the area:
SELECT continent, name country, area
FROM world x
WHERE area >= ALL
(
  SELECT area FROM world y
  WHERE y.continent=x.continent
  AND area>0
)

-- 7. Find each country that belongs to a continent where all populations are
-- less than 25000000. Show name, continent and population.
SELECT a.name country, a.continent, a.population
FROM world a
WHERE 25000000 > ALL
(
  SELECT b.population
  FROM world b
  WHERE a.continent = b.continent
  AND b.population > 0
)

-- 8. Some countries have populations more than three times that of any of their
-- neighbours (in the same continent). Give the countries and continents.
SELECT a.name country, a.continent
FROM world a
WHERE a.population > ALL
(
  SELECT b.population*3
  FROM world b
  WHERE a.continent = b.continent
  AND a.name <> b.name
)





import java.util.Date;

public class ContractEmp extends Employee {

	private double dailyall;
	private int numdays;
	public ContractEmp() {
		super();
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









import java.util.Date;


public abstract class Employee extends Person{
	private String desg;
	private String dept;
	private double sal;
	
	public Employee() {
		super();
	}
	public Employee(String nm,int a,String bd,String no,String desg, String dept, double sal) {
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
	abstract public double calculateSal();
	public String toString(){
		return super.toString()+"\nDesignation : " +desg +"Department : "
	                             +dept +"Salary : "+sal;
		
	}
	 

}









import java.util.Date;

public class Member extends Person {
	private String type;
	private int duration;
	

	public Member() {
		super();
	}

	public Member(String nm, int a, String bd, String no,String type,int duration) {
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
import java.io.*;
abstract public class Person implements Serializable {
	static{
		
		count=0;
	}
	static int count;
	private int perId;
	private String perName;
	private int age;
	private String bDate;
	private String mobNo;
	
	public Person(){
		count++;
		perId=count;
		perName=null;
		age=0;
		bDate=null;
		mobNo=null;
	}
	
	public Person(String nm,int a,String bd,String no){
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

	public String getbDate() {
		return bDate;
	}

	public void setbDate(String bDate) {
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

public class SalariedEmp extends Employee {
	private double bonus;
	private int leaves;

	public SalariedEmp() {
		super();
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







import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

public class ServiceFileAssignment {
	
	public static void acceptSalariedEmp(ArrayList<SalariedEmp> h)
	{
		Scanner sc=new Scanner(System.in);
		char ans;
		while(true)
		{
			int i=0;
			System.out.println("Eneter details of Salaried Employee"+(++i));
		//	System.out.println("Eneter Id");
		//	int id=sc.nextInt();
			System.out.println("Eneter Name");
			String nm=sc.next();
			System.out.println("Eneter Age");
			int age=sc.nextInt();
			System.out.println("Eneter bdate dd-mm-yyyy");
			String dt=sc.next();
			System.out.println("Eneter mobile number");
			String type=sc.next();
			System.out.println("Eneter Designation");
			String des=sc.next();
			System.out.println("Eneter Department");
			String dept=sc.next();
			System.out.println("Eneter Salary");
			Double sal=sc.nextDouble();
			System.out.println("Eneter Bonus");
			Double bon=sc.nextDouble();
			System.out.println("Eneter Number of leaves");
			int l =sc.nextInt();
			SalariedEmp p=new SalariedEmp(nm,age,dt,type,des,dept,sal,bon,l);
			h.add(p);
			System.out.println("Do you want to continue ?(y/N)");	
		    ans=(sc.next()).charAt(0);	
		    if((ans=='n')||(ans=='N'))
			break;
		}	
	}
/*	public static void acceptContractEmp(ArrayList<SalariedEmp> h)
	{
		Scanner sc=new Scanner(System.in);
		char ans;
		while(true)
		{
			int i=0;
			System.out.println("Eneter details of Contract Employee"+(++i));
		//	System.out.println("Eneter Id");
		//	int id=sc.nextInt();
			System.out.println("Eneter Name");
			String nm=sc.next();
			System.out.println("Eneter Age");
			int age=sc.nextInt();
			System.out.println("Eneter bdate dd-mm-yyyy");
			String dt=sc.next();
			System.out.println("Eneter mobile number");
			String type=sc.next();
			System.out.println("Eneter Designation");
			String des=sc.next();
			System.out.println("Eneter Department");
			String dept=sc.next();
			System.out.println("Eneter Salary");
			Double sal=sc.nextDouble();
			System.out.println("Eneter daily allowances");
			Double bon=sc.nextDouble();
			System.out.println("Eneter Number of days");
			int l =sc.nextInt();
			Person p=new ContractEmp(nm,age,dt,type,des,dept,sal,bon,l);
			h.add(p);
			System.out.println("Do you want to continue ?(y/N)");	
		    ans=(sc.next()).charAt(0);	
		    if((ans=='n')||(ans=='N'))
			break;
		}	
	}
	
	
	public static void acceptMember(ArrayList<SalariedEmp> h)
	{
		Scanner sc=new Scanner(System.in);
		char ans;
		while(true)
		{
			int i=0;
			System.out.println("Eneter details of Member"+(++i));
		//	System.out.println("Eneter Id");
		//	int id=sc.nextInt();
			System.out.println("Eneter Name");
			String nm=sc.next();
			System.out.println("Eneter Age");
			int age=sc.nextInt();
			System.out.println("Eneter bdate dd-mm-yyyy");
			String dt=sc.next();
			System.out.println("Eneter mobile number");
			String type=sc.next();
			System.out.println("Eneter Membership Type");
			String des=sc.next();
			System.out.println("Eneter membership duration");
			int l =sc.nextInt();
			Person p=new Member(nm,age,dt,type,des,l);
			h.add(p);
			System.out.println("Do you want to continue ?(y/N)");	
		    ans=(sc.next()).charAt(0);	
		    if((ans=='n')||(ans=='N'))
			break;
		}	
	}
	*/
	public static void calculateSal(ArrayList<SalariedEmp> al) {
		Iterator it=al.iterator();
		while(it.hasNext()){
			Person ob=(Person)it.next();
			if(ob instanceof SalariedEmp)
			{
				SalariedEmp e=(SalariedEmp)ob;
				System.out.println("Salaried employee "+ e.getPerName()+" with salary"+e.calculateSal());
				
			}
			else if(ob instanceof ContractEmp)
			{
				ContractEmp e=(ContractEmp)ob;
				System.out.println("Contract employee "+ e.getPerName()+" with salary"+e.calculateSal());
				
			}
			else
			{
			}
		}
		
	}
	
	public static void writeToFile(ArrayList<SalariedEmp> al,File f)
	{
		FileOutputStream fos;
		try {
			fos = new FileOutputStream(f);
			ObjectOutputStream oos=new ObjectOutputStream(fos);
			oos.writeObject(al);
			oos.close();
			} 
		catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public static void readFromFile(ArrayList<SalariedEmp> al,File f)
	{
		FileInputStream fis;
		try {
			fis = new FileInputStream(f);
			ObjectInputStream ois=new ObjectInputStream(fis);
			while(true)
			{
				SalariedEmp p1=(SalariedEmp)ois.readObject();
				if(p1==null)
				{
					break;
				}
				al.add(p1);
			}
			ois.close();
		} 
		catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}






import java.io.File;
import java.io.FileInputStream;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.Scanner;

public class TestArrayList {

	public static void main(String[] args) {
		
		File f=new File("Employeedetails2.dat");
		if(f.exists())
		{
			System.out.println("File exists :");
			Scanner sc=new Scanner(System.in);
			int option=0;
			String chr=null;
			String chr1=null;
			ArrayList<SalariedEmp> al=new ArrayList<>();
			FileInputStream fis;
			try {
				fis = new FileInputStream(f);
				ObjectInputStream ois=new ObjectInputStream(fis);
				while(true)
				{
					SalariedEmp p1=(SalariedEmp)ois.readObject();
					if(p1==null)
					{
						break;
					}
					al.add(p1);
				}
				ois.close();
				}catch(Exception e){}
			 System.out.println("data from file");
			for(SalariedEmp ob:al){
				 System.out.println(ob);
			 }
			System.out.println("end of code");
				
	}

}
}











import java.io.File;
import java.util.ArrayList;
import java.util.Scanner;

public class TestFileAssignment {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		

		File f=new File("Employeedetails2.dat");
		if(f.exists())
		{
			System.out.println("File exists :");
			Scanner sc=new Scanner(System.in);
			int option=0;
			String chr=null;
			String chr1=null;
			ArrayList<SalariedEmp> al=new ArrayList<>();
			ServiceFileAssignment.readFromFile(al,f);
			while(true)
		    {
				System.out.println("Choose an option\n 1.Enter salaried Employee \n2.Enter Contract employee\n 3.Enter Member \n 4.Calculate Salary \n 5.Exit");
				option=sc.nextInt();	
		    	switch(option) 
		    	{
		            case 1:
		            	ServiceFileAssignment.acceptSalariedEmp(al);
		 
		            	break;
		            case 2:
		            //	ServiceFileAssignment.acceptContractEmp(al);
		           	 
		            	break;
		            case 3:
		            //	ServiceFileAssignment.acceptMember(al);
		           	 
		                break;
		            case 4:
		            	ServiceFileAssignment.calculateSal(al);
		            	
		                break;
		            case 5:
		            	System.out.println("Thank you !!");
		            	ServiceFileAssignment.writeToFile(al,f);
		            	System.exit(0);
		            	break;
		            
		            default:
		            		
		            	System.out.println("Invalid Option");
		            	break;
		        }
		    	
		    	System.out.println("Do you want to continue,enter yes or y");
				chr1=sc.next();
				chr=chr1.toLowerCase();
				if(chr.equalsIgnoreCase("N"))
				break;
		    }//end of while

			
			
		}
		else
		{
			System.out.println("File not exists :");
			Scanner sc=new Scanner(System.in);
			int option=0;
			String chr=null;
			String chr1=null;
			ArrayList<SalariedEmp> al=new ArrayList<>();
			while(true)
		    {
				System.out.println("Choose an option\n 1.Enter salaried Employee \n2.Enter Contract employee\n 3.Enter Member \n 4.Calculate Salary \n 5.Exit");
				option=sc.nextInt();	
		    	switch(option) 
		    	{
		            case 1:
		            	ServiceFileAssignment.acceptSalariedEmp(al);
		 
		            	break;
		            case 2:
		//            	ServiceFileAssignment.acceptContractEmp(al);
		           	 
		            	break;
		            case 3:
		  //          	ServiceFileAssignment.acceptMember(al);
		           	 
		                break;
		            case 4:
		            	ServiceFileAssignment.calculateSal(al);
		            	
		                break;
		            case 5:
		            	System.out.println("Thank you !!");
		            	ServiceFileAssignment.writeToFile(al,f);
		            	System.exit(0);
		            	break;
		            
		            default:
		            		
		            	System.out.println("Invalid Option");
		            	break;
		        }
		    	
		    	System.out.println("Do you want to continue,enter yes or y");
				chr1=sc.next();
				chr=chr1.toLowerCase();
				if(chr.equalsIgnoreCase("N"))
				break;
		    }//end of while
	
		}
	}

}






