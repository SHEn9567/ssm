package com.hzit.ssm.service;

public interface ICompanyService {


    /**
     * 判断公司是否存在
     *
     * @param companyName
     * @return  true:公司名不存在，可用  false:存在，不可用
     *
     */
    public boolean isExistByName(String companyName);


}
