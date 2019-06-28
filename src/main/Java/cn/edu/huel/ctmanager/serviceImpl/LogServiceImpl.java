package cn.edu.huel.ctmanager.serviceImpl;

import cn.edu.huel.ctmanager.dao.LogDao;
import cn.edu.huel.ctmanager.pojo.Log;
import cn.edu.huel.ctmanager.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogServiceImpl implements LogService {

    @Autowired
    private LogDao logDao;
    @Override
    public void insertLog(Log log) {
        logDao.insertLog(log);
    }
}
