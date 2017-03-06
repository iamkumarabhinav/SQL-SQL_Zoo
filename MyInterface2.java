
public interface MyInterface2 extends MyInterface1  {
	double method3();
	char method4();//public
	int myvar=34;    //public static and final by default
	default void method5(){      //default allowed above 1.8
		System.out.println("in method5");
	}
}
