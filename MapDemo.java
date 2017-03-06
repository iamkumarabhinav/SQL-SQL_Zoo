import java.util.*;
public class MapDemo {

	public static void main(String[] args)
	{
		Scanner sc=new Scanner(System.in);
		HashMap<String,/*product*/ArrayList<String>> ob=new HashMap();
		System.out.println("Enter City Name");
		String city =sc.next();
		char ans='n';
		ArrayList<String> treeLst =new ArrayList<>();
		do
		{
			System.out.println("Enter Tree Name");
			String tr =sc.next();
			System.out.println("do you wanyt to continue?(y/n)");
			ans=sc.next().charAt(0);
			
		}while((ans=='y')||(ans=='Y'));
		ob.put()
}
