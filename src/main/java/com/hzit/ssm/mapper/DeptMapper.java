package com.hzit.ssm.mapper;

import com.hzit.ssm.bean.Dept;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DeptMapper {
    public List<Dept> list();

}
