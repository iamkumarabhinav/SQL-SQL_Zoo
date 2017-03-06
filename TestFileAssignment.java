import java.io.File;
import java.util.ArrayList;
import java.util.Scanner;
public class TestFileAssignment {
	public static void main(String[] args) {
		File f=new File("Emp2.dat");
		ArrayList<Person> al=new ArrayList<>();
		if(f.exists()){
			System.out.println("File exists :");
			int k=ServiceFileAssignment.readFromFile(al,f);
			new SalariedEmp(k);
		}
		Scanner sc=new Scanner(System.in);
		int option=0;
		boolean flag=true;
		while(flag){
			System.out.println("\nChoose an option\n 1.Enter salaried Employee \n2.Enter Contract employee\n 3.Enter Member \n 4.Calculate Salary \n 5.Exit");
			option=sc.nextInt();	
			switch(option) {
		            case 1:
		            	ServiceFileAssignment.acceptSalariedEmp(al);
		            	break;
		            case 2:
		            	ServiceFileAssignment.acceptContractEmp(al);
		            	break;
		            case 3:
		            	ServiceFileAssignment.acceptMember(al);
		                break;
		            case 4:
		            	ServiceFileAssignment.calculateSal(al);	
		                break;
		            case 5:
		            	System.out.println("Thank you Objects are being Serialized !!");
		            	ServiceFileAssignment.writeToFile(al,f);
		            	flag=false;
		            	System.exit(0);
		            	break;
		            default:
		            	System.out.println("Invalid Option");
		            	break;
		        }		    	
		    }
		}
}