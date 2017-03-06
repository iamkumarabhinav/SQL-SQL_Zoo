import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class Dictionary {
	
	Dictionary()
	{
	         try(DataOutputStream dos=new DataOutputStream(new FileOutputStream("MyDictionary.txt"));)
	         {
	                dos.writeUTF("abhinav");
	                dos.writeUTF("ajit");
	                dos.writeUTF("mango");
	                dos.writeUTF("apple");
	                dos.writeUTF("hut");
	                dos.writeUTF("love");
	         } 
	         catch (FileNotFoundException e) 
	         {
	                e.printStackTrace();
	         } catch (IOException e1) 
	         {
	                e1.printStackTrace();
	        }

	}
	
	public void search(String s){
		try(DataInputStream dis = new DataInputStream(new FileInputStream("MyDictionary.txt"));) 
		{
			int flag=0;
			while(true){
				String n =dis.readUTF(); 
				if(s.equals(n)){
					flag=1;
					break;
				}					
			}
			if(flag==1)
			{
				System.out.println();
				System.out.println(s+" -String exists");
				System.out.println();
			}
			else
			{
				System.out.println();
				System.out.println(s+" -String not found");
				System.out.println();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch(EOFException e){
			System.out.println(s+"-String not found");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}

}
