package com.ssm.Utils;

import redis.clients.jedis.Jedis;

/**
 * Created by 张齐 on 2020/3/20 18:43
 */
public class JedisUtils {
    public static Jedis getJedis(){
        Jedis jedis = new Jedis("localhost");
        return  jedis;
    }
}
