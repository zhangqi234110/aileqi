package com.ssm.Utils;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by 张齐 on 2020/3/20 17:51
 */
public class ParamUtil {
    public static Map params(){
        int code = RandomCode.getCode();
        Map params = new HashMap();
        params.put("mobile","");//接受短信的用户手机号码
        params.put("tpl_id","172799");//您申请的短信模板ID，根据实际情况修改
        params.put("tpl_value","#code#="+code+"");//您设置的模板变量，根据实际情况修改
        params.put("key","57ae183b0f6ae44c76b3684e1b44b9e2");//应用APPKEY(应用详细页查询)
        return params;
    }
}
