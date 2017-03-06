
import java.util.*;  
public class MyNameSort implements Comparator<Product>
{  
	public int compare(Product p1,Product p2){  
		return p1.getpName().compareTo(p2.getpName());  
	}  
}  
