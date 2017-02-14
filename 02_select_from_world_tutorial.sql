-- 1. Observe the result of running a simple SQL command.
SELECT name country, continent, population
FROM world

-- 2. Show the name for the countries that have a population of at least 200
-- million.
SELECT name country
FROM world
WHERE population>200000000

-- 3. Give the name and the per capita GDP for those countries with a
-- population of at least 200 million.
SELECT name country, gdp/population per_capita_gdp
FROM world
WHERE population > 200E6

-- 4. Show the (name) and (population) in millions for the countries of
-- 'South America' Divide the population by 1000000 to get population in
-- millions.
SELECT name country, population/1000000 pop_millions
FROM world
WHERE continent = 'South America'

-- 5. Show the (name) and (population) for 'France', 'Germany', 'Italy'
SELECT name country, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

-- 6. Identify the countries which have names including the word 'United'
SELECT name country
FROM world
WHERE name LIKE '%United%'



day 3 assignments


import java.text.ParseException;
import java.util.Scanner;
import java.util.ArrayList;
public class TestPlayerArray {
	public static void main(String[] args) throws ParseException
	{
		ArrayList<Player> hSet=new ArrayList<>();
		ServicePlayer.acceptPlayers(hSet);
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
		            	p=ServicePlayer.searchPlayersById(hSet,option);
		            	if(p==-1)
		            		System.out.println(" id not found");
		            	else
		            		System.out.println(" id found");
		            	break;
		            case 2:
		            	System.out.println("Enter the name");
		            	x=sc.next();
		            	p=ServicePlayer.searchPlayersByName(hSet,x);
		            	if(p==-1)
		            		System.out.println(" name not found");
		            	else
		            		System.out.println(" name found");
		            	break;
		            case 3:
		            	System.out.println("Enter the id");
		            	option=sc.nextInt();
		            	p=ServicePlayer.showPlayerDetailsById(hSet,option);
		            	if(p==-1)
		            		System.out.println(" id not found");
		                break;
		            case 4:
		            	System.out.println("enter id you want to modify");
		            	option=sc.nextInt();
		            	System.out.println("enter new type of tat player");
		            	x=sc.next();
		            	ServicePlayer.modifyById(hSet,option,x);
		            	System.out.println(" type of tat player is changed");
		                break;
		            case 5:
		            	ServicePlayer.showPlayers(hSet);
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




import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;
import java.util.TreeSet;

public class ServicePlayer {
	public static void acceptPlayers(ArrayList<Player> h)
	{
		Scanner sc=new Scanner(System.in);
		char ans;
		while(true)
		{
			int i=0;
			System.out.println("Eneter details of player"+(++i));
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
			Player p=new Player(id,nm,age,dt,type);
			h.add(p);
			System.out.println("Do you want to continue ?(y/N)");	
		    ans=(sc.next()).charAt(0);	
		    if((ans=='n')||(ans=='N'))
			break;
		}	
	}
	public static void showPlayers(ArrayList<Player> h)
	{
		Iterator it=h.iterator();
		while(it.hasNext()){
			Player ob=(Player)it.next();
			ob.display();
		}
	}
	public static int searchPlayersById(ArrayList<Player> h, int k)
	{
		Iterator it=h.iterator();
		while(it.hasNext()){
			Player ob=(Player)it.next();
			if(ob.getplay_Id()==k)
			{
				return k;
			}
			
		}
		return -1;
		
		 
	}
	public static int showPlayerDetailsById(ArrayList<Player> h, int k)
	{
		Iterator it=h.iterator();
		while(it.hasNext()){
			Player ob=(Player)it.next();
			if(ob.getplay_Id()==k)
			{
				ob.display();
				return k;
			}
		}
		return -1;
	}
	public static int searchPlayersByName(ArrayList<Player> h,String k)
	{
		Iterator it=h.iterator();
		while(it.hasNext())
		{
			
			Player ob=(Player)it.next();
			if(ob.getplay_Name().equals(k))
			{
				return 0;
			}
			
		}
		return -1;
	}
	public static void modifyById(ArrayList<Player> h,int k,String m)
	{
		Iterator it=h.iterator();
		while(it.hasNext())
		{
			Player ob=(Player)it.next();
			if(ob.getplay_Id()==k)
			{
				ob.setplay_Type(m);
			}
			
		}
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
