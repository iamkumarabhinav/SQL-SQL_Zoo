import java.util.*;

public class MyIdSort implements Comparator<Product>{
	public int compare(Product p1,Product p2){   
		if(p1.getpId()<p2.getpId())
		{
			return -1;
		}
		else
		{
			if(p1.getpId()==p2.getpId())
			{
				return 0;
			}
			else
			{
				return 1;
			}
		}
	}
}