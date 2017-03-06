abstract public class Person {
	static
	{
		count=0;
	}
	static int count;
	private int perId;
	private String perName;
	private int age;
	private String bDate;
	private String mobNo; //if private not then access outside class
	
	public Person()
	{
		count++;
		perId=count;
		perName=null;
		age=0;
		bDate=null;
		mobNo=null;
	}
	
	public Person(String name,int a,String bd,String pr)
	{
		count++;
		this.perId=count;
		perName=name;
		age=a;
		bDate=bd;
		mobNo=pr;
	}
	public int getPerId()
	{
		return perId;
	}
	public String getPerName()
	{
		return perName;
	}
	public int getAge()
	{
		return age;
	}
	public String getbDate()
	{
		return bDate;
	}
	public String getMobNo()
	{
		return mobNo;
	}
	public void setPerId(int m)
	{
		perId=m;
	}
	public void setPerName(String m)
	{
		perName=m;
	}
	public void setAge( int n)
	{
		age=n;
	}
	public void setbDate(String m)
	{
		bDate=m;
	}
	public void setMobNo(String n)
	{
		mobNo=n;
	}
	
	public void display()
	{
		System.out.println("id : "+perId);
		System.out.println("name : "+perName);
		System.out.println("age : "+age);
		System.out.println("bday : "+bDate);
		System.out.println("mobile no. : "+mobNo);
	}	
	public String toString(){
		return "\nid : "+perId +"\nname : "+perName+"\nage : "+age +"\nbday : "+bDate+"\nmobile no. : "+mobNo;
	}
	public abstract double calculateSal();
}
