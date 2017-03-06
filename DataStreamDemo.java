import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
public class DataStreamDemo {
	public static void main(String[] args)
	{
		try (FileOutputStream fos=new FileOutputStream("sampleout.dat");
				FileInputStream fis=new FileInputStream("sampleout.dat");
				DataInputStream dis=new DataInputStream(fis);
				DataOutputStream dos=new DataOutputStream(fos))
		{		dos.writeInt(10);		
				dos.writeUTF("String");
				dos.writeDouble(234.56);
			
				
				//autocloseable resources if inside try block
	    //OutputStream creates file hence write it first    
		
	                int id=dis.readInt();
	                String nm=dis.readUTF();
	                double d=dis.readDouble();
	                System.out.println(id+" "+nm+" "+d);
	        } catch (FileNotFoundException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	        } catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	}
	

}
