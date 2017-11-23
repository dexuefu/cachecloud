package com.sohu.cache.constant;

/**
 * 系统配置静态变量
 * Created by jch on 17/11/23.
 */
public class SystemConstant {
    /**
     * 实例最小500MB才进行内存碎片率检查，否则价值不是很大
     */
    public final static long MIN_CHECK_MEMORY = 500 * 1024 * 1024;
}
