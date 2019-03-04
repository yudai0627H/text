
public class Capsule {

	public static void main(String[] args){
		Preson taro =new Preson("山田太郎",20);
//		System.out.println(taro.name);
		
		System.out.println(taro.getName());
		taro.setName("花子");
		System.out.println(taro.getName());
		System.out.println(taro.getAge());
		taro.setAge(30);
		System.out.println(taro.getAge());
	}
}
