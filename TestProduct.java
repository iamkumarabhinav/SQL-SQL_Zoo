import java.util.Collections;
import java.util.HashSet;
import java.util.TreeSet;

//will not work with tree set because it is dependent on various variables on which it should be  sorted
public class TestProduct {
	public static void main(String[] args)
	{
		TreeSet<Product> hSet=new TreeSet<>(new MyIdSort());
		ServiceProduct.acceptData(hSet);
		System.out.println("sorting by Id..."); 
		ServiceProduct.showData(hSet);
		
		TreeSet<Product> hSet1=new TreeSet<>(new MyNameSort());
		ServiceProduct.acceptData(hSet1);
		System.out.println("sorting by Name..."); 
		ServiceProduct.showData(hSet1);
		
		TreeSet<Product> hSet3=new TreeSet<>(new MyQtySort());
		ServiceProduct.acceptData(hSet3);
		System.out.println("sorting by Qty..."); 
		ServiceProduct.showData(hSet3);
		
		
		
		
		
	}
	
	
}
