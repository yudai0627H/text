package jp.co.internous.action;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class WhileTest {
	public static void main(String[] args){
		List<Integer> list=new LinkedList<Integer>();
		list.add(12);
		list.add(34);
		list.add(56);
		list.add(78);
		list.add(90);

		Iterator<Integer> iterator=list.iterator();

		while(iterator.hasNext()){
			System.out.print("["+iterator.next()+"]");
		}
		System.out.println();
	}

}
