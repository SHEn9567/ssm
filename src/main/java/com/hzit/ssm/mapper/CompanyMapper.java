package com.hzit.ssm.mapper;

import com.hzit.ssm.bean.Company;

public interface CompanyMapper {


    public Company findByName(String companyName);

}
