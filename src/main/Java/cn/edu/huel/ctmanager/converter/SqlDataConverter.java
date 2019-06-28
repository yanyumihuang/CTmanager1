package cn.edu.huel.ctmanager.converter;


import org.springframework.core.convert.converter.Converter;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class SqlDataConverter implements Converter<String , Date> {
    @Override
    public Date convert(String source) {
System.out.println(source);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date d = null;
        try {
            d = format.parse(source);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        java.sql.Date s_birthday1 = new java.sql.Date(d.getTime());
       return  s_birthday1;
    }
}
