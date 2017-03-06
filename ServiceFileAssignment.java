import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;
public class ServiceFileAssignment {
	public static void acceptSalariedEmp(ArrayList<Person> h)
	{
		Scanner sc=new Scanner(System.in);
		char ans;
		while(true)
		{
			int i=0;
			System.out.println("Eneter details of Salaried Employee"+(++i));
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
			Person p=new SalariedEmp(nm,age,dt,type,des,dept,sal,bon,l);
			h.add(p);
			System.out.println("Do you want to enter another Salaried Employee ?(y/N)");	
		    ans=(sc.next()).charAt(0);	
		    if((ans=='n')||(ans=='N'))
			break;
		}	
	}
	public static void acceptContractEmp(ArrayList<Person> h)
	{
		Scanner sc=new Scanner(System.in);
		char ans;
		while(true)
		{
			int i=0;
			System.out.println("Eneter details of Contract Employee"+(++i));
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
			System.out.println("Do you want to enter another contract employee ?(y/N)");	
		    ans=(sc.next()).charAt(0);	
		    if((ans=='n')||(ans=='N'))
			break;
		}	
	}
	public static void acceptMember(ArrayList<Person> h)
	{
		Scanner sc=new Scanner(System.in);
		char ans;
		while(true)
		{
			int i=0;
			System.out.println("Eneter details of Member"+(++i));
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
			System.out.println("Do you want to enter another member ?(y/N)");	
		    ans=(sc.next()).charAt(0);	
		    if((ans=='n')||(ans=='N'))
			break;
		}	
	}
	public static void calculateSal(ArrayList<Person> al) {
		Iterator it=al.iterator();
		while(it.hasNext()){
			Person ob=(Person)it.next();
			if(ob instanceof SalariedEmp)
			{
				SalariedEmp e=(SalariedEmp)ob;
				System.out.println("Salaried employee "+ e.getPerName()+"and emp id ="+e.getPerId()+" with salary"+e.calculateSal());
				
			}
			else if(ob instanceof ContractEmp)
			{
				ContractEmp e=(ContractEmp)ob;
				System.out.println("Contract employee "+ e.getPerName()+"and emp id ="+e.getPerId()+" with salary"+e.calculateSal());
				
			}
			else
			{
			}
		}
		
	}
	public static void writeToFile(ArrayList<Person> al,File f)
	{
		FileOutputStream fos;
		try 
		{
			fos = new FileOutputStream(f);
			ObjectOutputStream oos=new ObjectOutputStream(fos);
			Iterator<Person> it=al.iterator();
			while(it.hasNext())
			{
				Person ob=(Person)it.next();
				if(ob instanceof SalariedEmp)
				{	
					oos.writeObject(ob);
				}
				else if(ob instanceof ContractEmp)
				{
					oos.writeObject(ob);
				}
				else if(ob instanceof Member)
				{
					oos.writeObject(ob);
				}
			}
			oos.close();
		}
		catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	public static int readFromFile(ArrayList<Person> al,File f)
	{
		FileInputStream fis;Person p1=null;
		try {
			fis = new FileInputStream(f);
			ObjectInputStream ois=new ObjectInputStream(fis);
			while(true)
			{
				p1=(Person)ois.readObject();
				if(p1==null)
				{
					ois.close();
					break;
				}
				al.add(p1);
			}
		} 
		catch(EOFException e)
		{
			System.out.println();
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
		return p1.getPerId();
	}
}
