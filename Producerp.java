import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class Producerp extends Thread {
	private Storages s;
	public DataInputStream dis=null;
	File f=new File("NumberFile.dat");
	public Producerp(Storages s){
		this.s=s;
		try(DataInputStream dis=new DataInputStream(new FileInputStream(f));)
		{
			
		}
		catch(EOFException e){
			System.out.println("all integers read");
		}catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	public void run(){
			try
			{
				while(dis.available()>0){
					s.puts(dis.readInt());
				}
			}
			catch(EOFException e){
				System.out.println("all integers read");
			}catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			catch(NullPointerException e)
			{
				e.printStackTrace();
			}
			try
			{
				if(dis.available()>0==false){
					s.puts(-1);
					System.out.println("All elements read : ");
					dis.close();
				}
			}
			catch(EOFException e){
				System.out.println("all integers read");
			}catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
	}

}
