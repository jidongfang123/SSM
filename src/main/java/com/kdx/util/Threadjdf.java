package com.kdx.util;

public class Threadjdf extends Thread {
	
	public void run(){
		System.out.println(getName()+"这是一个线程");
		int count = 0;
		boolean RunThread = true;
		
		while (RunThread) {
			System.out.println(getName()+"执行了"+(++count)+"次");
			if (count%10 == 0) {
				try {
					Thread.sleep(5000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				} 
			}
		}
	}

	
	public static void main(String[] args) {
		Thread thread = new Threadjdf();
		thread.setName("线程1");
		thread.start();
	}
}
