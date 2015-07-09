package com.ram.alg;

public class MainThread {
        public static void main(String arg[]){
                long threadId = Thread.currentThread().getId();
                String name = Thread.currentThread().getName();
                System.out.println("ID->"+threadId +" Thread name ->"+name);
        }

}
