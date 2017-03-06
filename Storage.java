public class Storage {
	private int n;
	private boolean flag;
	public Storage(){
		n=-1;
		flag=false;
	}

	synchronized  public void put(int x){
		if(flag==true){
			 try {
				wait();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}}
		n=x;
		flag=true;
		System.out.println("Put : "+ n);
		notify();
	}
	synchronized public void get(){
		if(flag==false){
			try {
				wait();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		System.out.println("Put : "+ n);
		flag=false;
		notify();
	}

}
