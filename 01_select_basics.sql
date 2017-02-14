-- Spiderman Andew Garfield- NY accent

-- 1. Show the population of Germany
SELECT population
FROM world
WHERE name = 'Germany'

-- 2. Show the per capita gdp: (gdp/population) for each country where the area
-- is over 5,000,000 km^2
SELECT name country, gdp/population per_capita_gdp
FROM world
WHERE area > 5000000

-- 3. Show the name and continent where the area is less then 2000 and the gdp
-- is more than 5000000000
SELECT name country, continent
FROM world
WHERE area < 2000
AND gdp > 5000000000

-- 4. Show the name and the population for 'Denmark', 'Finland', 'Norway',
-- 'Sweden'
SELECT name country, population
FROM world
WHERE name IN ('Denmark', 'Finland', 'Norway', 'Sweden')

-- 5. Show each country that begins with G
SELECT name country
FROM world
WHERE name LIKE 'G%'

-- 6. Show the area in 1000 square km. Show area/1000 instead of area
SELECT name country, area/1000
FROM world
WHERE area BETWEEN 207600 AND 244820


package my first project ,exception,collection

/*collections package
arraylistdemo.java
import java.util.ArrayList;
public class ArrayListDemo {

	public static void main(String[] args)
	{
		ArrayList<Integer> hSet=new ArrayList<Integer>();
		hSet.add(10);
		hSet.add(20);
		hSet.add(30);
		hSet.add(40);
		boolean ans=hSet.add(10);
		if(ans=false)
		{
			System.out.println("Duplicate Number");
		}
		System.out.println(hSet);
		System.out.println("Size :"+hSet.size());
		hSet.remove(30);
		System.out.println("30 removed");
		System.out.println(hSet);
		
	}

}



import java.util.HashSet;
import java.util.Iterator;

public class HashSetDemo {
	
	public static void main(String[] args)
	{
		HashSet<Integer> hSet=new HashSet<>();
		hSet.add(10);
		hSet.add(20);hSet.add(30);hSet.add(40);
		boolean ans=hSet.add(10);
		if(ans=false)
		{
			System.out.println("Duplicate Number");
		}
		System.out.println(hSet);
		System.out.println("Size :"+hSet.size());
		hSet.remove(30);
		System.out.println("after removal of 30");
		System.out.println(hSet);
		int sum=0;
		for(Integer ob:hSet)
		{
			sum=sum+ob;
		}
		System.out.println("Addition : "+ sum);
		sum=0;
		System.out.println("Using Iterator");
		Iterator it =hSet.iterator();
		while(it.hasNext())
		{
			Integer ob=(Integer)it.next();
			sum=sum+ob;
		}
		System.out.println("Addition : "+ sum);
		
		
	}

}





import java.util.*;

public class MyIdSort implements Comparator<Product>{
	public int compare(Product p1,Product p2){   
		if(p1.getpId()<p2.getpId())
		{
			return -1;
		}
		else
		{
			if(p1.getpId()==p2.getpId())
			{
				return 0;
			}
			else
			{
				return 1;
			}
		}
	}
}





import java.util.*;  
public class MyNameSort implements Comparator<Product>
{  
	public int compare(Product p1,Product p2){  
		return p1.getpName().compareTo(p2.getpName());  
	}  
}  




import java.util.Comparator;

public class MyQtySort implements Comparator<Product>{
	public int compare(Product p1,Product p2){   
		if(p1.getQty()<p2.getQty())
		{
			return -1;
		}
		else
		{
			if(p1.getQty()==p2.getQty())
			{
				return 0;
			}
			else
			{
				return 1;
			}
		}
	}
}









public class Product/* implements Comparable<Product>*/ {//comparator if short on name ,qty
	private int pId;
	private String pName;
	private int qty;
	public Product(int pId, String pName, int qty) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.qty = qty;
	}
	public Product() {
		super();
	}
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public void display(){
		System.out.println("Id : "+pId);
		System.out.println("Name : "+pName);
		System.out.println("Quantity : "+qty);
		
	}

/*	public int compareTo(Product p)
	{
		if(pId<p.pId)
		{
			return -1;
		}
		else
		{
			if(pId==p.pId)
			{
				return 0;
			}
			else
			{
				return 1;
			}
		}
	}
	
*/
}







import java.util.HashSet;
import java.util.TreeSet;

import java.util.Scanner;

public class ServiceProduct {
	public static void acceptData(TreeSet<Product> hSet)
	{
		Scanner sc =new Scanner(System.in);
		char ans='y';
		
		do
		{
			
			System.out.println("Enter Id");
			int id=sc.nextInt();
			System.out.println("Enter Name");
			String nm=sc.next();
			System.out.println("Enter qty");
			int qty=sc.nextInt();
			Product p=new Product(id,nm,qty);
			hSet.add(p);
			System.out.println("Do you want to continue ?(y/n)");
			ans=(sc.next()).charAt(0);
		}while((ans=='y')||(ans=='Y'));
	}
	public static void showData(TreeSet<Product> h)
	{
		for(Product p:h)
		{
			p.display();
		}
	}

}





import java.util.Collections;
import java.util.HashSet;
import java.util.TreeSet;

//will not work with tree set because it is dependent on various variables on which it should be  sorted
public class TestProduct {
	public static void main(String[] args)
	{
		TreeSet<Product> hSet=new TreeSet<>(new MyIdSort());
		ServiceProduct.acceptData(hSet);
		System.out.println("sorting by Id..."); 
		ServiceProduct.showData(hSet);
		
		TreeSet<Product> hSet1=new TreeSet<>(new MyNameSort());
		ServiceProduct.acceptData(hSet1);
		System.out.println("sorting by Name..."); 
		ServiceProduct.showData(hSet1);
		
		TreeSet<Product> hSet3=new TreeSet<>(new MyQtySort());
		ServiceProduct.acceptData(hSet3);
		System.out.println("sorting by Qty..."); 
		ServiceProduct.showData(hSet3);
		
		
		
		
		
	}
	
	
}







	import java.util.TreeSet;
	public class TreeSetDemo
	{
		
		public static void main(String[] args)
		{
			TreeSet<Integer> hSet=new TreeSet<>();
			hSet.add(10);
			hSet.add(20);hSet.add(30);hSet.add(40);
			boolean ans=hSet.add(10);
			if(ans=false)
			{
				System.out.println("Duplicate Number");
			}
			System.out.println(hSet);
			System.out.println("Size :"+hSet.size());
			hSet.remove(30);
			System.out.println("afetr removal of 30");
			System.out.println(hSet);
			
		}

	}
	



package exception


public class AgeException extends Exception{
	public AgeException(String msg)
	{
		super(msg);
	}

}







public class TestException {
	public void mymethod(){
		int[] intarr={12,1,314,15,16};
		try{
			String s=null;
			System.out.println("Length:"+s.length());
			for(int i=0;i<intarr.length;i++)
			{
				System.out.println("Value is :"+intarr[i]);
			}
		}
		catch(ArrayIndexOutOfBoundsException|NullPointerException e)
		{
			System.out.println("inside catch"+e.getMessage());//getter method of exception class
			e.printStackTrace();
			throw e;
		}
		catch(Exception e)
		{
			System.out.println("in generalised catch block "+e.getMessage());//getter method of exception class
		}
		finally{
			System.out.println("in finally block");
		}
		
		
		System.out.println("After loop");
	}
	public static void main(String args[])
	{
		TestException e =new TestException();
		System.out.println("Before MYMethod call :");
		try{
			e.mymethod();
		}
		catch(ArrayIndexOutOfBoundsException e1)
		{
			System.out.println("inside catch"+e1.getMessage());//getter method of exception class
			e1.printStackTrace();
		}
		System.out.println("After My Method call");
	}

}





package my first project 




public class AgeException extends Exception{
	public AgeException(String msg)
	{
		super(msg);
	}

}





public class Handlers {
	
	public static void main(String args[])
	{
		String s=null;
		System.out.println(s.length());
	}

}




import java.util.Scanner;
class NumberOp
{
	public static int factorial(int n)
	{    
  		if (n == 0)    
    		return 1;    
  		else    
    		return(n * factorial(n-1));
	}
	public static boolean isPrime(int n)
	{
    		for(int i=2;i<n;i++)
		 {
        		if(n%i==0)
            			return false;
    		}
   		return true;
	}
	public static void main(String[] args)
	{
		int num1=Integer.parseInt(args[0]);
		int fact=factorial(num1);
		System.out.println("Factorial of "+args[0]+" is: "+fact);
		boolean prime=isPrime(num1);
		if(prime==true)
			System.out.println(args[0]+" is prime no.");
		else
			System.out.println(args[0]+" is not a prime no.");
		
		System.out.println("Enter a number whose reverse is to be found: ");
		Scanner sc =new Scanner(System.in);
		int n=sc.nextInt();
		int reverse = 0;
 		while( n != 0 )
      		{
        		reverse = reverse * 10;
   		        reverse = reverse + n%10;
         		n = n/10;
      		}
 
 	        System.out.println("Reverse of entered number is "+reverse);
		
	}
}



import java.util.Date;
public class Person {
	static
	{
		count=0;
	}
	static int count;
	private int perId;
	private String perName;
	private int age;
	private String bDate;
	private String mobNo; //if private not then access outside class
	
	public Person()
	{
		count++;
		perId=count;
		perName=null;
		age=0;
		bDate=null;
		mobNo=null;
	}
	
	public Person(String name,int a,String bd,String pr)
	{
		count++;
		this.perId=count;
		perName=name;
		age=a;
		bDate=bd;
		mobNo=pr;
	}
	public int getPerId()
	{
		return perId;
	}
	public String getPerName()
	{
		return perName;
	}
	public int getAge()
	{
		return age;
	}
	public String getbDate()
	{
		return bDate;
	}
	public String getMobNo()
	{
		return mobNo;
	}
	public void setPerId(int m)
	{
		perId=m;
	}
	public void setPerName(String m)
	{
		perName=m;
	}
	public void setAge( int n)
	{
		age=n;
	}
	public void setbDate(String m)
	{
		bDate=m;
	}
	public void setMobNo(String n)
	{
		mobNo=n;
	}
	
	public void display()
	{
		System.out.println("id : "+perId);
		System.out.println("name : "+perName);
		System.out.println("age : "+age);
		System.out.println("bday : "+bDate);
		System.out.println("mobile no. : "+mobNo);
	}	
}



import java.util.*;
public class Player
{

	private int play_id;
	private String play_name;
	private int age;
	private String play_bdate;
	private String play_type;

	public Player() 
	{
         play_id=0;
         play_name=null;
         age=0;
         play_bdate=null;
         play_type=null;
	}

	public Player(int id,String nm,int a,String bd,String no)
 	{
         play_id=id;
         play_name=nm;
         age=a;
         play_bdate=bd;
         play_type=no;
 	}

	public void display()
	{
         System.out.println("Id :" +play_id);
         System.out.println("Name :" +play_name);
         System.out.println("Age :" +age);
         System.out.println("B'Date :" +play_bdate);
         System.out.println("Type :" +play_type);
	}
	
	
	
	public int getplay_Id()
	{
		return play_id;
	}
	public String getplay_Name()
	{
		return play_name;
	}
	public String getplay_Type()
	{
		return play_type;
	}

	public void setplay_Type(String m)
	{
		play_type=m;
	}
	
}





import java.util.Scanner;

public class ServicePerson {
	public static void acceptPersons(Person[] p)
	{
		for(int i=0;i<p.length;i++)
		{
		
		
			Scanner sc =new Scanner(System.in);
			System.out.println("Eneter Id");
			int id=sc.nextInt();
			System.out.println("Eneter Name");
			String nm=sc.next();
			System.out.println("Eneter Age");
			int age=sc.nextInt();
			System.out.println("Eneter bdate dd-mm-yyyy");
			String dt=sc.next();
			//Date bdate=new SimpleDateFormat("dd-mm-yyyy").parse(dt);
			System.out.println("Eneter mobile number");
			String mobno=sc.next();
			p[i]=new Person(id,nm,age,dt,mobno);
		}	
	}
	public static void showPersons(Person[] p)
	{
		for(int i=0;i<p.length;i++)
		{
			p[i].display();
		}
	}
}






import java.util.Scanner;

public class ServicePlayer {
	public static void acceptPlayers(Player[] p)
	{
		for(int i=0;i<p.length;i++)
		{
		
			Scanner sc =new Scanner(System.in);
			System.out.println("Eneter details of player"+i);
			System.out.println("Eneter Id");
			int id=sc.nextInt();
			System.out.println("Eneter Name");
			String nm=sc.next();
			System.out.println("Eneter Age");
			int age=sc.nextInt();
			System.out.println("Eneter bdate dd-mm-yyyy");
			String dt=sc.next();
			System.out.println("Eneter player type");
			String type=sc.next();
			p[i]=new Player(id,nm,age,dt,type);
		}	
	}
	public static void showPlayers(Player[] p)
	{
		for(int i=0;i<p.length;i++)
		{
			p[i].display();
		}
	}
	public static int searchPlayersById(Player[] p, int k)
	{
		for(int i=0;i<p.length;i++)
		{
			if(p[i].getplay_Id()==k)
			{
				return k;
			}
		}
		return -1;
		 
	}
	public static int showPlayerDetailsById(Player[] p, int k)
	{
		for(int i=0;i<p.length;i++)
		{
			if(p[i].getplay_Id()==k)
			{
				p[i].display();
				return k;
			}
			
		}
		return -1;
	}
	public static int searchPlayersByName(Player[] p,String k)
	{
		for(int i=0;i<p.length;i++)
		{
			if(p[i].getplay_Name()==k)
			{
				return 0;
			}
			
		}
		return -1;
	}
	public static void modifyById(Player[] p,int k,String m)
	{
		for(int i=0;i<p.length;i++)
		{
			if(p[i].getplay_Id()==k)
			{
				p[i].setplay_Type(m);
			}
			
		}
	}
	
}






import java.util.Scanner;

//assignment during allocation is initialisation
/*Person[] perArr=new Person[10];
		int[] iarr=new int[10];//allocating the memory
		//assignment happen with one element at a time
		iarr[0]=10;
		int[] intArr={11,12,13};
		*/
public class TestPerArray
{
	public static void main(String[] args)
	{
		Person[] perArr=new Person[2];
		for(int i=0;i<perArr.length;i++)
		{
		
		
			Scanner sc =new Scanner(System.in);
			System.out.println("Eneter Id");
			int id=sc.nextInt();
			System.out.println("Eneter Name");
			String nm=sc.next();
			System.out.println("Eneter Age");
			int age=sc.nextInt();
			System.out.println("Eneter bdate dd-mm-yyyy");
			String dt=sc.next();
			//Date bdate=new SimpleDateFormat("dd-mm-yyyy").parse(dt);
			System.out.println("Eneter mobile number");
			String mobno=sc.next();
			perArr[i]=new Person(id,nm,age,dt,mobno);
		}
		for(int i=0;i<perArr.length;i++)
		{
			perArr[i].display();
		}
	}
}




import java.text.ParseException;
public class TestPerArray1 {
	public static void main(String[] args) throws ParseException
	{
		Person[] perArr=new Person[2];
		ServicePerson.acceptPersons(perArr);
		ServicePerson.showPersons(perArr);
		
	}

}






import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;
public class TestPerson {
	public static void main(String[] args)
	{
		Scanner sc =new Scanner(System.in);
		System.out.println("Id :"+(Person.count+1));
		System.out.println("Eneter Name");
		String nm=sc.next();
		System.out.println("Eneter Age");
		int age=0;
		try
		{
			age=sc.nextInt();
			if((age<18)||(age>60))
			{
				throw new AgeException("Age should be between 18 and 60");
			
			}
		}
		catch(AgeException e)
		{
			System.out.println(e.getMessage());
			System.out.println("Pleaes re-enter age");
			age=sc.nextInt();
			try
			{
				if((age<18)||(age>60))
				{
					throw new AgeException("Age should be between 18 and 60");
			
				}
			}
			catch(AgeException e1)
			{
				System.out.println(e1.getMessage());
				System.out.println("Pleaes re-enter age");
				age=sc.nextInt();
			}
		}
		System.out.println("Eneter bdate dd-mm-yyyy");
		String dt=sc.next();
		//Date bdate=new SimpleDateFormat("dd-mm-yyyy").parse(dt);
		System.out.println("Eneter mobile number");
		String mobno=sc.next();
		
		Person p1=new Person();
		p1.display();
		Person p2=new Person(nm,age,dt,mobno);
		p2.display();
		System.out.println("Entered mobile number"+p2.getMobNo());
		System.out.println("Eneter new mobile number which you want ");
		String c=sc.next();
		p2.setMobNo(c);
		System.out.println("changed mobile number"+p2.getMobNo());
		
	}

}





import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;
public class TestPlayer {
	public static void main(String[] args)
	{
		Scanner sc =new Scanner(System.in);
		System.out.println("Eneter details of player 1");
		
		System.out.println("Eneter Id");
		int id=sc.nextInt();
		System.out.println("Eneter Name");
		String nm=sc.next();
		System.out.println("Eneter Age");
		int age=sc.nextInt();
		System.out.println("Eneter bdate dd-mm-yyyy");
		String dt=sc.next();
		System.out.println("Eneter player type");
		String type=sc.next();
		Player p1=new Player(id,nm,age,dt,type);
		p1.display();
		System.out.println("Eneter details of player 2");
		id=sc.nextInt();
		System.out.println("Eneter Name");
		nm=sc.next();
		System.out.println("Eneter Age");
		age=sc.nextInt();
		System.out.println("Eneter bdate dd-mm-yyyy");
		dt=sc.next();
		System.out.println("Eneter player type");
		type=sc.next();
		Player p2=new Player(id,nm,age,dt,type);
		p2.display();
	}

}






import java.text.ParseException;
import java.util.Scanner;
public class TestPlayerArray {
	public static void main(String[] args) throws ParseException
	{
			Player[] perArr=new Player[2];
			ServicePlayer.acceptPlayers(perArr);
			int option=0;
			String x=null;
			Scanner sc =new Scanner(System.in);
			
			
			//Scanner sc =new Scanner(System.in);
			
			String chr1=null;
			String chr=null;
			int p=0;
			do
		    {
				
				System.out.println("Choose an option 1.Search by id \n2. Search by Name\n 3. display by id \n 4.modify\n 5. Display all players \n 6.Exit");
				option=sc.nextInt();
				
		    	switch(option) 
		    	{
		            case 1:
		            	System.out.println("Enter the id");
		            	option=sc.nextInt();
		            	p=ServicePlayer.searchPlayersById(perArr,option);
		            	if(p==-1)
		            		System.out.println(" id not found");
		            	else
		            		System.out.println(" id found");
		            	break;
		            case 2:
		            	System.out.println("Enter the name");
		            	x=sc.next();
		            	p=ServicePlayer.searchPlayersByName(perArr,x);
		            	if(p==-1)
		            		System.out.println(" name not found");
		            	else
		            		System.out.println(" name found");
		            	break;
		            case 3:
		            	System.out.println("Enter the id");
		            	option=sc.nextInt();
		            	p=ServicePlayer.showPlayerDetailsById(perArr,option);
		            	if(p==-1)
		            		System.out.println(" id not found");
		                break;
		            case 4:
		            	System.out.println("enter id you want to modify");
		            	option=sc.nextInt();
		            	System.out.println("enter new type of tat player");
		            	x=sc.next();
		            	ServicePlayer.modifyById(perArr,option,x);
		            	System.out.println(" type of tat player is changed");
		                break;
		            case 5:
		            	ServicePlayer.showPlayers(perArr);
		            	break;
		            case 6:
		            	System.out.println("Thank you !!");
		            	System.exit(0);
		            	break;
		            	default: 
		            		System.out.println("Invalid Option");
		            		break;
		        }
		    	
		    	System.out.println("Do you want to continue,enter yes or y");
				chr1=sc.next();
				chr=chr1.toLowerCase();
		    }while(chr.equalsIgnoreCase("Y"));
		}
		
		
	}







