package com.hzit.ssm.service.impl;

import com.hzit.ssm.bean.Company;
import com.hzit.ssm.mapper.CompanyMapper;
import com.hzit.ssm.service.ICompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CompanyServiceImpl implements ICompanyService {


    @Autowired
    private CompanyMapper companyMapper;

    @Override
    public boolean isExistByName(String companyName) {

        Company company = companyMapper.findByName(companyName);
        if(company==null)
        {
            return true;
        }
        return false;
    }
}
