package com.ram.alg;

public class FindMaxSumArray {

        
        public static void main(String arg[]) {
                
                int array[] = {4, -1, 2, -2,-1,-3};
                
                System.out.println("Max Sum -> "+findMaxSum(array, array.length));
        }

        private static int findMaxSum(int[] array, int length) {
                
                int currentSum = 0;
                int currentMax = 0;
                
                for (int j=0; j< length; j++){
                        
                        currentSum += array[j];
                        if (currentMax < currentSum) {
                                currentMax = currentSum;
                        } else if (currentSum < 0) {
                                currentSum = 0;
                        }
                                       
                        
                }
                return currentMax;
        }
}
