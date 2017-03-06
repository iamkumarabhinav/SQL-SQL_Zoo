
public class Thread1 extends Thread {
	
	private String s;
	private Dictionary d;
	
	public Thread1(Dictionary t,String s){
		d=t;
		this.s=s;
	}
	
	public void run(){
		 try {
				this.sleep(100000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		d.search(s);
	}

}
