package com.hzit.ssm.util;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 统一响应json格式的数据
 */
@Data
@Accessors(chain = true)
public class ResultData<T> {

    /**
     * 状态码:
     * <p>
     * - 200 成功
     * - 500 错误
     */
    private Integer code;

    /**
     * 描述信息  查询成功
     */
    private String msg;

    /**
     * 具体存放的数据
     */
    private T data;

    /**
     * 成功方法
     *
     * @param data
     * @return
     */
    public static ResultData ok(Object data) {
        return new ResultData<>().setCode(200).setMsg("操作成功").setData(data);
    }


    /**
     * 失败的操作
     *
     * @param errorMsg
     * @return
     */
    public static ResultData error(String errorMsg) {
        return new ResultData<>().setCode(500).setMsg(errorMsg).setData(null);
    }


}
