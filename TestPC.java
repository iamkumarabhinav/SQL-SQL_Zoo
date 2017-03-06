import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.io.FileInputStream;
public class TestPC
{
	public static void main(String[] args)
                        throws InterruptedException
    {
    		while(true)
        	{
    			File f=new File("NumberFile.dat");	
        		if(f.exists())
        		{
        			System.out.println("File exists :");
        			Storages s=new Storages();
        			Consumerc c=new Consumerc(s);
        			Producerp p=new Producerp(s);
        			p.start();
        			c.start();
        			try {
        				p.join();
        				c.join();
        			} catch (InterruptedException e) {
        				
        				e.printStackTrace();
        			}
        			System.out.println("End of Main");
        			break;
        		} 
        		else
        		{
        			try(DataOutputStream dos=new DataOutputStream(new FileOutputStream(f));)
        			{
    	                for(int i=1;i<=10;i++)
    	                {
    	                	dos.writeInt(i);
    	                }
    	                dos.close();
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
        	}//end of while
    }//end of main
}//end of class