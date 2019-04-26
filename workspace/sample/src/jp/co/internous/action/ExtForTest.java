package jp.co.internous.action;

import java.util.LinkedList;
import java.util.List;

public class ExtForTest {
	public static void main(String[] args){
		List<Integer> list =new LinkedList<Integer>();
		list.add(12);
		list.add(34);
		list.add(56);
		list.add(78);
		list.add(90);
		list.add(12);

		for (Integer data:list){
			System.out.print("["+data+"]");
		}
		System.out.println();

	}

}
