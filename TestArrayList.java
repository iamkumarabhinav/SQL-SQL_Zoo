import java.io.File;
import java.io.FileInputStream;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.Scanner;

public class TestArrayList {

	public static void main(String[] args) {
		
		File f=new File("Employeedetails4.dat");
		if(f.exists())
		{
			System.out.println("File exists :");
			Scanner sc=new Scanner(System.in);
			int option=0;
			String chr=null;
			String chr1=null;
			ArrayList<SalariedEmp> al=new ArrayList<>();
			FileInputStream fis;
			try {
				fis = new FileInputStream(f);
				ObjectInputStream ois=new ObjectInputStream(fis);
				while(true)
				{
					System.out.println("while loop mein");
					SalariedEmp p1=(SalariedEmp)ois.readObject();
					if(p1==null)
					{
						break;
					}
					al.add(p1);
				}
				ois.close();
				}catch(Exception e){}
			 System.out.println("data from file");
			for(SalariedEmp ob:al){
				System.out.println("for loop mein");
				
				 System.out.println(ob);
			 }
			System.out.println("end of code");
				
	}

}
}
