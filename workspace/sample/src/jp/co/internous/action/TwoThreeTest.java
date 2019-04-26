package jp.co.internous.action;

public class TwoThreeTest {
	public static void main(String[] args){

		TwoHoleOutlet outlet2=new TwoHoleOutlet();

		ThreePinPlug plug3= new ThreePinPlug();

		outlet2.insert(new TwoThreeAdapter(plug3));
	}

}
