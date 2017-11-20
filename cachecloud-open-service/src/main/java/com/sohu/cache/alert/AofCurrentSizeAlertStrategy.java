package com.sohu.cache.alert;

import com.sohu.cache.entity.InstanceAlertConfig;
import com.sohu.cache.entity.InstanceAlertValueResult;
import com.sohu.cache.entity.InstanceInfo;
import com.sohu.cache.redis.enums.RedisInfoEnum;
import org.apache.commons.lang.math.NumberUtils;

import java.util.Arrays;
import java.util.List;

/**
 * aof当前尺寸检测
 * @author leifu
 * @Date 2017年6月16日
 * @Time 下午2:34:10
 */
public class AofCurrentSizeAlertStrategy extends AlertConfigStrategy {

    @Override
    public List<InstanceAlertValueResult> checkConfig(InstanceAlertConfig instanceAlertConfig, AlertConfigBaseData alertConfigBaseData) {
        Object object = getValueFromRedisInfo(alertConfigBaseData.getStandardStats(), RedisInfoEnum.aof_current_size.getValue());
        // 没有配置Aof
        if (object == null) {
            return null;
        }
        long aofCurrentSize = NumberUtils.toLong(object.toString());
        aofCurrentSize = changeByteToMB(aofCurrentSize);
        boolean compareRight = isCompareLongRight(instanceAlertConfig, aofCurrentSize);
        if (compareRight) {
            return null;
        }
        InstanceInfo instanceInfo = alertConfigBaseData.getInstanceInfo();
        return Arrays.asList(new InstanceAlertValueResult(instanceAlertConfig, instanceInfo, String.valueOf(aofCurrentSize),
                instanceInfo.getAppId(), MB_STRING));
    }

}
