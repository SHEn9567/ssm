package com.hzit.ssm.controller;

import com.hzit.ssm.bean.Dept;
import com.hzit.ssm.service.IDeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/dept")
public class DeptController {


    @Autowired
    private IDeptService deptService;


    @RequestMapping("/list")
    @ResponseBody
    public List<Dept> list() {
        List<Dept> all = deptService.getAll();
        return all;
    }


}
