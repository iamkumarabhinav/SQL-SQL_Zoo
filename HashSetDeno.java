import java.util.HashSet;

public class HashSetDeno {
	
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
		
	}

}
