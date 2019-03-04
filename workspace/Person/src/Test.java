
public class Test {

	public static void main(String[] args){
		Person taro=new Person();
		taro.name="山田太郎";
		taro.age=20;

		Person jiro=new Person();
		jiro.name="島次郎";
		jiro.age=18;

		Person hanako=new Person();
		hanako.name="戸井例野花子";
		hanako.age=16;
		
		Person yudai=new Person();
		yudai.name="星雄大";
		yudai.age=23;
		yudai.phoneNumber="09012335678";
		yudai.address="yudai@gamil.com";

		System.out.println("課題①");
		System.out.println(taro.name);
		System.out.println(taro.age);
		System.out.println("");

		System.out.println("課題②");
		System.out.println(jiro.name);
		System.out.println(jiro.age);
		System.out.println("");
		System.out.println(hanako.name);
		System.out.println(hanako.age);
		System.out.println("");

		System.out.println("課題④");
		System.out.println(yudai.name);
		System.out.println(yudai.age);
		System.out.println(yudai.phoneNumber);
		System.out.println(yudai.address);
		System.out.println("");
		
		System.out.println("課題6");
		taro.talk();
		taro.walk();
		taro.run();
		
		System.out.println("");
		System.out.println("課題８");
//		課題８
		Robot aibo=new Robot();
		aibo.name="aibo";
		aibo.run();
		
		Robot asimo=new Robot();
		asimo.name="asimo";
		asimo.talk();
		Robot pepper=new Robot();
		pepper.name="pepper";
		pepper.walk();
		
		
	}
}
