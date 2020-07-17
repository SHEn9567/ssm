package com.hzit.ssm.controller;

import com.hzit.ssm.service.ICompanyService;
import com.hzit.ssm.util.ResultData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/company")
public class CompanyController {


    @Autowired
    private ICompanyService companyService;


    @RequestMapping("/isExist")
    @ResponseBody
    public ResultData isExistByName(String companyName) {

        boolean exist = companyService.isExistByName(companyName);
        if (exist) {
            return ResultData.ok(exist); //可用
        }
        return ResultData.error("公司名称，已经存在!请重新选择!");
    }


}
