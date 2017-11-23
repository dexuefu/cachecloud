package com.sohu.cache.alert;

import com.sohu.cache.constant.SystemConstant;
import com.sohu.cache.entity.InstanceAlertConfig;
import com.sohu.cache.entity.InstanceAlertValueResult;
import com.sohu.cache.entity.InstanceInfo;
import com.sohu.cache.redis.enums.RedisInfoEnum;
import org.apache.commons.lang.math.NumberUtils;

import java.util.Arrays;
import java.util.List;

/**
 * 内存碎片率
 * 
 * @author leifu
 * @Date 2017年6月16日
 * @Time 下午2:34:10
 */
public class MemFragmentationRatioAlertStrategy extends AlertConfigStrategy {
    
    @Override
    public List<InstanceAlertValueResult> checkConfig(InstanceAlertConfig instanceAlertConfig, AlertConfigBaseData alertConfigBaseData) {
        // 检查内存
        Object usedMemoryObject = getValueFromRedisInfo(alertConfigBaseData.getStandardStats(), RedisInfoEnum.used_memory.getValue());
        long usedMemory = NumberUtils.toLong(usedMemoryObject.toString());
        if (usedMemory < SystemConstant.MIN_CHECK_MEMORY) {
                return null;
        }
        
        // 内存碎片率
        Object memFragmentationRatioObject = getValueFromRedisInfo(alertConfigBaseData.getStandardStats(), RedisInfoEnum.mem_fragmentation_ratio.getValue());
        if (memFragmentationRatioObject == null) {
            return null;
        }
        
        // 关系比对
        double memFragmentationRatio = NumberUtils.toDouble(memFragmentationRatioObject.toString());
        boolean compareRight = isCompareDoubleRight(instanceAlertConfig, memFragmentationRatio);
        if (compareRight) {
            return null;
        }
        InstanceInfo instanceInfo = alertConfigBaseData.getInstanceInfo();
        InstanceAlertValueResult instanceAlertValueResult = new InstanceAlertValueResult(instanceAlertConfig, instanceInfo, String.valueOf(memFragmentationRatio),
                instanceInfo.getAppId(), EMPTY);
        instanceAlertValueResult.setOtherInfo(String.format("内存使用为%s MB", String.valueOf(changeByteToMB(usedMemory))));
        return Arrays.asList();
    }

}
