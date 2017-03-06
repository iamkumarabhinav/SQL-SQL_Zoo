import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class Consumerc extends Thread {
	private Storages s;
	public DataOutputStream dos=null;
	File f1=new File("Factorial.dat");
	int x;
	public Consumerc(Storages s){
		this.s=s;
		try(DataOutputStream dos=new DataOutputStream(new FileOutputStream(f1));)
		{
			
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
	public void run(){
		while(true)
		{
			x=s.gets();
			if(x!=-1)
			{
				try
				{
					dos.writeInt(x);
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
			if(x==-1)
			break;
		}
	}
}
