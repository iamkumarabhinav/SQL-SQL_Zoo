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