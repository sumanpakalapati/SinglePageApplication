package com.ram.alg;

public class MyHashMap {

	private static final int SIZE = 32;
	private Entry table[] = new Entry[SIZE];

	class Entry {
		final String key;
		String value;
		Entry next;

		Entry(String key, String value) {
			this.key = key;
			this.value = value;
		}

		public Entry get(String key) {
			int hashCode = key.hashCode() % SIZE;
			Entry e = table[hashCode];
			while (e != null) {
				if (e.key.equals(key)) {
					return e;
				}
				e = e.next;
			}
			return null;

		}
		
		public void put(String key, String value) {
		 
			int hashCode = key.hashCode() %SIZE;
			Entry e = table[hashCode];
			if (e != null) {
				if (e.key.equals(key)) {
					e.value = value;
				} else {
					while(e.next !=null) {
						e = e.next;
					}
					Entry newEntry = new Entry(key, value);
					e.next = newEntry;
				}
			} else {

				Entry newEntry = new Entry(key, value);
				table[hashCode] = newEntry;
			}
			
		}

		public String getValue() {
			return value;
		}

		public void setValue(String value) {
			this.value = value;
		}

		public Entry getNext() {
			return next;
		}

		public void setNext(Entry next) {
			this.next = next;
		}

		public String getKey() {
			return key;
		}

	}

}
