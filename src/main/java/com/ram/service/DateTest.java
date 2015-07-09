package com.ram.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.joda.time.DateTime;
import org.joda.time.Days;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

public class DateTest {

        public static void main(String[] args) {

               
                DateTime dt = new DateTime();
                DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
                String str = fmt.print(dt);
                
                DateTime startDate  = new DateTime(str);
                
                DateTime endDate =new DateTime("2015-05-25T12:32:00.000");
                String endDateStr = fmt.print(endDate);
                DateTime endDate2 =new DateTime(endDateStr);
                
                System.out.println("Start -> "+ str);
                System.out.println("End -> "+ endDateStr);
                
                int daysToTravel = Days.daysBetween(startDate, endDate2).getDays();
                System.out.println("Days between = " + daysToTravel);

        }

}
