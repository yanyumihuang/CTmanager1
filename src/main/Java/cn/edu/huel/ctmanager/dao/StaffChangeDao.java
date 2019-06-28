package cn.edu.huel.ctmanager.dao;

import cn.edu.huel.ctmanager.pojo.StaffChange;

import java.util.List;

public interface StaffChangeDao {
    public int insertchange(StaffChange staffChange);
    public List<StaffChange> selectchange1(int s_id);
    public List<StaffChange> selectchange();
}
