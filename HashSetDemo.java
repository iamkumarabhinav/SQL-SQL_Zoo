import java.util.HashSet;
import java.util.Iterator;

public class HashSetDemo {
	
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
		int sum=0;
		for(Integer ob:hSet)
		{
			sum=sum+ob;
		}
		System.out.println("Addition : "+ sum);
		sum=0;
		System.out.println("Using Iterator");
		Iterator it =hSet.iterator();
		while(it.hasNext())
		{
			Integer ob=(Integer)it.next();
			sum=sum+ob;
		}
		System.out.println("Addition : "+ sum);
		
		
	}

}
