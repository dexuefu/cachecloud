package com.sohu.cache.dao;

import com.sohu.cache.entity.AppClientVersion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 客户端上报版本信息统计
 * 客户端版本dao
 * @author leifu
 * @Date 2015年2月2日
 * @Time 上午10:36:20
 */
public interface AppClientVersionDao {

    /**
     * 保存或者更新客户端版本信息
     * @param appClientVersion
     */
    void saveOrUpdateClientVersion(AppClientVersion appClientVersion);

    /**
     * 根据客户端ip获取所有的appId
     * @param clientIp
     * @return
     */
    List<AppClientVersion> getByClientIp(@Param("clientIp") String clientIp);

    /**
     * 获取应用的所有客户端版本信息
     * @param appId
     * @return
     */
    List<AppClientVersion> getAppAllClientVersion(@Param("appId") long appId);
    
    /**
     * 获取所有版本，暂时不分页
     * @return
     */
    List<AppClientVersion> getAll(@Param("appId") long appId);


}
