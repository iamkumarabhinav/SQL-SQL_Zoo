public class Producer extends Thread {
	private Storage s;
	public Producer(Storage s){
		this.s=s;
	}
	public void run(){
		for(int i=0;i<10;i++)
		{
			s.put(i);
		}
	}

}
