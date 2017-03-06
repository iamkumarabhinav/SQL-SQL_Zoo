
public class TestException {
	public void mymethod(){
		int[] intarr={12,1,314,15,16};
		try{
			String s=null;
			System.out.println("Length:"+s.length());
			for(int i=0;i<intarr.length;i++)
			{
				System.out.println("Value is :"+intarr[i]);
			}
		}
		catch(ArrayIndexOutOfBoundsException|NullPointerException e)
		{
			System.out.println("inside catch"+e.getMessage());//getter method of exception class
			e.printStackTrace();
			throw e;
		}
		catch(Exception e)
		{
			System.out.println("in generalised catch block "+e.getMessage());//getter method of exception class
		}
		finally{
			System.out.println("in finally block");
		}
		
		
		System.out.println("After loop");
	}
	public static void main(String args[])
	{
		TestException e =new TestException();
		System.out.println("Before MYMethod call :");
		try{
			e.mymethod();
		}
		catch(ArrayIndexOutOfBoundsException e1)
		{
			System.out.println("inside catch"+e1.getMessage());//getter method of exception class
			e1.printStackTrace();
		}
		System.out.println("After My Method call");
	}

}
