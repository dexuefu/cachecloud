package com.sohu.cache.constant;

/**
 * @author leifu
 * @Date 2016-1-26
 * @Time 下午9:26:58
 */
public class BaseConstant {

    /** mill seconds of one day */ // 1秒钟
    public static long MILLISECONDS_OF_ONE_SECOND = 1000;

    /** mill seconds of one day */ // 1分钟
    public static long MILLISECONDS_OF_ONE_MINUTE = 1000 * 60;

    /** mill seconds of one day */ // 1天
    public static long MILLISECONDS_OF_ONE_DAY = 1000 * 60 * 60 * 24;

    /** mill seconds of one hour */ // 1小时
    public static long MILLISECONDS_OF_ONE_HOUR = 1000 * 60 * 60;

    /**
     * WORD_SEPARATOR ( char )2
     */
    public static final String WORD_SEPARATOR = Character.toString((char) 2);

    public static final String SYSTEM_PROPERTY_CONFIG_FILE_PATH = "configFilePath";

    public static final int MINUTE_DIMENSIONALITY = 0;

    public static final int HOUR_DIMENSIONALITY = 1;

}
