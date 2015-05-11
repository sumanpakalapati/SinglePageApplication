package com.ram.alg;

public class LinkedList {
	private Node head;
	private Node tail;

	LinkedList() {
		this.head = new Node("Head");
		this.tail = head;
	}
	
	public Node getHead(){
		return this.head;
	}
	public void addNode(Node newNode) {
		this.tail.next = newNode;
	}

	public static class Node {
		
		private Node next;
		private String data;

		Node(String data) {
			this.data = data;
		}

		public Node getNext() {
			return next;
		}

		public void setNext(Node next) {
			this.next = next;
		}

		public String getData() {
			return data;
		}

		public void setData(String data) {
			this.data = data;
		}

		@Override
                public String toString() {
	                return "Node [data=" + data + "]";
                }
		

	}
}
