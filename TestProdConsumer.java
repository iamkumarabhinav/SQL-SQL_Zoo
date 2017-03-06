import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.io.FileInputStream;
public class TestProdConsumer
{
    public static void main(String[] args)
                        throws InterruptedException
    {
    	
    	while(true)
    	{
    		File f=new File("MyFile.txt");
    		ArrayList<Integer> al=new ArrayList<>();
    		if(f.exists())
    		{
    			System.out.println("File exists :");
 
    		} 
    		else
    		{
    			try(DataOutputStream dos=new DataOutputStream(new FileOutputStream(f));)
    			{
	                dos.write(1);
	                dos.write(2);
	                dos.write(3);
	                dos.write(4);
	                dos.write(5);
	                dos.write(6);
    			} 
    			catch (FileNotFoundException e) 
    			{
	                e.printStackTrace();
    			}
    			catch (IOException e1) 
    			{
    				e1.printStackTrace();
    			}

    		}
    		if(false)
    			break;
    		
    		
    		
    	}//end of while

    	
    }
    
}
/*
    	Storage s=new Storage();
		Consumer c=new Consumer(s);
		Producer p=new Producer(s);
		ArrayList<Integer> al = new ArrayList<>();
        int capacity = 3;
		p.start();
		c.start();
		Thread t1 = new Thread(new Runnable()
        {
            @Override
            public void run()
            {
                try
                {
                    pc.produce();
                }
                catch(InterruptedException e)
                {
                    e.printStackTrace();
                }
            }
        });
 
        // Create consumer thread
        Thread t2 = new Thread(new Runnable()
        {
            @Override
            public void run()
            {
                try
                {
                    pc.consume();
                }
                catch(InterruptedException e)
                {
                    e.printStackTrace();
                }
            }
        });
 
        // Start both threads
        t1.start();
        t2.start();
 
        // t1 finishes before t2
        t1.join();
        t2.join();
    }
 


/*
public class TestProdConsumer {
	public static void main(String[] args){
		try {
			p.join();
			c.join();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("End Of Main");
		
		
		
	}

}
*/