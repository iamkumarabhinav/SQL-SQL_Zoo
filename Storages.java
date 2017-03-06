import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
public class Storages
{
	private boolean flag;
	static int ct=1;
	ArrayList<Integer> b=new ArrayList<Integer>();
//	ArrayList<Integer> c=new ArrayList<Integer>();
	public Storages()
	{
		flag=false;
	}

	synchronized  public void puts(int x){
		if(flag==true)
		{
			 try {
				wait();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		if(x!=-1)
		{
			b.add(x);
			System.out.println("put :"+x);
		}
		if((ct++)%3==0||x==-1)
		{			
			flag=true;
			notify();
		}
		
			
	}
	synchronized public int gets(){
		if(flag==false){
			try {
				wait();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		int temp=factorial(b.get(0));
		System.out.println("Get factorial of : "+b.get(0)+"="+temp);
		b.remove(0);
		if((ct++)%3==0)
		{			
			flag=false;
			notify();
			return temp;
		}
		return temp;
	}
	int factorial(int n)
	{
	  int c;
	  int result = 1;
	 
	  for (c = 1; c <= n; c++)
	    result = result * c;
	 
	  return result;
	}
}

/*
 import java.util.ArrayList;
import java.util.Iterator;

public class Storages {
	private boolean flag;
	static int ct=1;
	ArrayList<Integer> a=new ArrayList<Integer>();
	ArrayList<Integer> b=new ArrayList<Integer>();
	ArrayList<Integer> c=new ArrayList<Integer>();
	public Storages(ArrayList <Integer> al){
		flag=false;
		Iterator<Integer> it=al.iterator();
		while(it.hasNext()){
			Integer ob=(Integer)it.next();
			a.add(ob);
		}
	}

	synchronized  public void puts(){
		if(flag==true)
		{
			 try {
				wait();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		b.add(a.get(0));
		System.out.println("Put : "+a.get(0));
		a.remove(0);
		if((ct++)%3==0||a.isEmpty())
		{			
			flag=true;
			notify();
		}
			
	}
	synchronized public void gets(){
		if(flag==false){
			try {
				wait();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		c.add(factorial(b.get(0)));
		System.out.println("Get factorial of : "+b.get(0)+"="+factorial(b.get(0)));
		b.remove(0);
		if((ct++)%3==0)
		{			
			flag=false;
			notify();
		}
	}
	int factorial(int n)
	{
	  int c;
	  int result = 1;
	 
	  for (c = 1; c <= n; c++)
	    result = result * c;
	 
	  return result;
	}
	public ArrayList<Integer> copyArr()
	{
		return c;
	}
}

 */