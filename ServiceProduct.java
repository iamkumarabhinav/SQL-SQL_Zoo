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
