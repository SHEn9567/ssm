package com.hzit.ssm.test;

import com.hzit.ssm.bean.Dept;
import com.hzit.ssm.service.IDeptService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class TestMybatis {


    @Autowired
    private IDeptService deptService;


    @Test
    public void test01() {
        List<Dept> all = deptService.getAll();
        for (Dept dept : all) {
            System.out.println(dept);
        }
    }
}
