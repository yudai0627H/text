package jp.co.internous.action;

public class TwoThreeAdapter extends TwoPinPlug {
	private ThreePinPlug x;

	public String getTwoPin(){
		return x.getThreePin();
	}

	public TwoThreeAdapter(ThreePinPlug plug){
		this.x=plug;
	}


}
