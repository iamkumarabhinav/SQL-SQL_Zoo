import java.util.Date;

public class Member extends Person {
	private String type;
	private int duration;
	public Member(int x) {
		super(x);
	}

	public Member(String nm, int a, String bd, String no,String type,int duration) {
		super(nm, a, bd, no);
		this.type = type ;
		this.duration = duration;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}
	public String toString(){
		return super.toString()+"\nMembership Type : " +type +"\nDuration : "
	                             +duration;
		
	}
	 

}