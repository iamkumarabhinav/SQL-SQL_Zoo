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