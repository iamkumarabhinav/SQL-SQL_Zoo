import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class TestCopyFile {
	public static void main(String[] args){
		try (FileInputStream fis=new FileInputStream("sample.dat");
			FileOutputStream fos=new FileOutputStream("output.dat");)//autocloseable resources
        {
                int i=fis.read();
                while(i!=-1)
                {
                        fos.write(i);
                        i=fis.read();
                }
        } catch (FileNotFoundException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
        } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
        }

        

	}
}
