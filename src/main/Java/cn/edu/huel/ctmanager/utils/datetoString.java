package cn.edu.huel.ctmanager.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class datetoString {
    public static String  switchq(){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
      String date=format.format(new Date());
        return date ;
    }
}
