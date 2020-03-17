package com.ssm.common;

/**
 * Created by 张齐 on 2020/3/15 9:23
 */
public class Common {
    private int code;
    private String tip;
    private Object data;

    public Common() {
    }

    public Common(int code, String tip, Object data) {
        this.code = code;
        this.tip = tip;
        this.data = data;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getTip() {
        return tip;
    }

    public void setTip(String tip) {
        this.tip = tip;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
