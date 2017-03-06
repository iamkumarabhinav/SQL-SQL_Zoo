

import java.util.Scanner;

public class TestDictionary {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Dictionary d = new Dictionary();
		String abc=null;
		Thread1 arr[]=new Thread1[5];
        for(int i=0;i<5;i++)
        {
                System.out.println("Ënter a string:");
                abc=sc.next();
                arr[i]=new Thread1(d,abc);
                arr[i].start();
        }		  

	}

}