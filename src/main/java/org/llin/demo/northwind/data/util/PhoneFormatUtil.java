package org.llin.demo.northwind.data.util;

public class PhoneFormatUtil {
    public static String formatPhoneNumber(String phoneNumber) {
    	if (phoneNumber == null) return "";
    	if (phoneNumber.equals("")) return "";
        if (phoneNumber.length() == 10) { // Assuming the phone number is 10 digits
            return String.format("(%s) %s-%s",
                    phoneNumber.substring(0, 3),
                    phoneNumber.substring(3, 6),
                    phoneNumber.substring(6));
        } else {
            // Handle other cases or throw an exception for invalid phone numbers
            return phoneNumber;
        }
    }
}
