package jp.co.internous.action;

public class MyClass {

	private static MyClass obj=null;

	public static MyClass createInstance(){
		if (MyClass.obj==null){
			System.out.println("インスタンスを生成します");
			MyClass.obj=new MyClass();
	}
		else{
			System.out.println("生成済みのインスタンスを共有します");
			}
		return MyClass.obj;
		}

	private MyClass(){
		System.out.println("膨大な処理が行われました");
	}

}
