package com.ram.alg;

import java.util.HashMap;
import java.util.Map;

public class Fibonacci {

	private Map<Long, Long> fibonacciMemory;

	public Fibonacci() {
		super();
		this.fibonacciMemory = new HashMap<Long, Long>();
	}

	public static void main(String args[]) {
		Fibonacci fibonacci = new Fibonacci();
		fibonacci.computeNthFibonacci(3); //1 + 1 + 2 + 3 + 5 + 8
	}

	public long computeNthFibonacci(long n) {

		if (fibonacciMemory.containsKey(n)) {
			return fibonacciMemory.get(n).longValue();
		}
		long tempFibonacci = 0;
		for (long k = 1; k <= n; k++) {
			System.out.println("k is ->"+ k);
			if (k <= 2) {
				tempFibonacci = 1;
			} else {
				tempFibonacci = fibonacciMemory.get(k - 1) + fibonacciMemory.get(k - 2);
			}
			fibonacciMemory.put(k, tempFibonacci);
		}
		System.out.println("Nth Fibonacci is -> " + fibonacciMemory.get(n).longValue());
		return fibonacciMemory.get(n).longValue();
	}

	public Map<Long, Long> getFibonacciMemory() {
		return fibonacciMemory;
	}

	public void setFibonacciMemory(Map<Long, Long> fibonacciMemory) {
		this.fibonacciMemory = fibonacciMemory;
	}

}
