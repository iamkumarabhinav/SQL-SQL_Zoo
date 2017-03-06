import java.util.Comparator;

public class MyQtySort implements Comparator<Product>{
	public int compare(Product p1,Product p2){   
		if(p1.getQty()<p2.getQty())
		{
			return -1;
		}
		else
		{
			if(p1.getQty()==p2.getQty())
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