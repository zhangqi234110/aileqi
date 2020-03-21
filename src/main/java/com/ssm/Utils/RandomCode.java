package com.ssm.Utils;

import java.util.Random;

/**
 * Created by 张齐 on 2020/3/20 17:41
 */
public class RandomCode {

    public static int getCode(){
        Random random = new Random();
        int i = 1000+random.nextInt(9000);
        return i;
    }

}
