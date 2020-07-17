package com.hzit.ssm.service.impl;

import com.hzit.ssm.bean.Dept;
import com.hzit.ssm.mapper.DeptMapper;
import com.hzit.ssm.service.IDeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DeptServiceImpl implements IDeptService {

    @Autowired
    private DeptMapper deptMapper;

    @Override
    public List<Dept> getAll() {
        //处理业务逻辑...
        List<Dept> list = deptMapper.list();
        return list;
    }
}
