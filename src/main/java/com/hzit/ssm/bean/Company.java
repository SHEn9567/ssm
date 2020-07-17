package com.hzit.ssm.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)  //支持链式写法
public class Company {
    private Integer companyId;
    private String companyName;


    public static void main(String[] args) {
        Company company = new Company().setCompanyId(1).setCompanyName("xxxx");
    }

}
