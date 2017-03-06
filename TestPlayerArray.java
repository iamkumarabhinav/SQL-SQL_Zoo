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

