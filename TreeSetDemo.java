
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
	
