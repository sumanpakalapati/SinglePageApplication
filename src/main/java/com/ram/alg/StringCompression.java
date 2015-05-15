package com.ram.alg;

/**
 * Implement a method to perfrom basic string compression using the count.
 * Ex : aabcccccdd ->a2b1c5d2 and if the compressed string is larger then original string then return the original.
 * @author seetharamireddmittala
 *
 */
public class StringCompression {

        public static void main(String arg[]) {
                String str = "aabcccccdd";

                StringCompression stringCompression = new StringCompression();
                System.out.println("Compressed StRING ->" + stringCompression.compressString(str));
        }

        private String compressString(String str) {
                char charArr[] = str.toCharArray();
                StringBuffer compressedString = new StringBuffer();

                int count = 1;
                char lastCahr = charArr[0];
                for (int i = 1; i < charArr.length; i++) {
                        if (charArr[i] == lastCahr) {
                                count++;
                        } else {
                                compressedString.append(lastCahr);
                                compressedString.append(count);
                                lastCahr = charArr[i];
                                count = 1;
                        }
                }
                compressedString.append(lastCahr);
                compressedString.append(count);
                return compressedString.toString();

        }

}
