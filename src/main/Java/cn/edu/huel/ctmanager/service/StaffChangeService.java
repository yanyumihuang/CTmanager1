package cn.edu.huel.ctmanager.service;

import cn.edu.huel.ctmanager.pojo.StaffChange;

import java.util.HashMap;

public interface StaffChangeService {
    public int insertchange(StaffChange staffChange);
    public HashMap<String, Object> selectchange1(int s_id,String pageNumber);
    public HashMap<String, Object> selectchange( String pageNumber);
}
