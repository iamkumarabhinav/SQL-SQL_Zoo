
public class Product/* implements Comparable<Product>*/ {//comparator if short on name ,qty
	private int pId;
	private String pName;
	private int qty;
	public Product(int pId, String pName, int qty) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.qty = qty;
	}
	public Product() {
		super();
	}
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public void display(){
		System.out.println("Id : "+pId);
		System.out.println("Name : "+pName);
		System.out.println("Quantity : "+qty);
		
	}

/*	public int compareTo(Product p)
	{
		if(pId<p.pId)
		{
			return -1;
		}
		else
		{
			if(pId==p.pId)
			{
				return 0;
			}
			else
			{
				return 1;
			}
		}
	}
	
*/
}
