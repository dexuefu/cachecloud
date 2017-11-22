package com.sohu.cache.entity;

import com.sohu.cache.constant.BaseConstant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Date;

/**
 * Created by yijunzhang on 14-9-2.
 */
public class TimeDimensionality {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    private final long begin;

    private final long end;

    private final int dimensionality;

    public TimeDimensionality(long begin, long end, String format) {
        Date beginDate = DateUtil.getDateByFormat(String.valueOf(begin), format);
        Date endDate = DateUtil.getDateByFormat(String.valueOf(end), format);
        this.dimensionality = getSuitableDimensionality(beginDate, endDate);
        if (dimensionality == BaseConstant.MINUTE_DIMENSIONALITY) {
            this.begin = Long.parseLong(DateUtil.formatDate(beginDate, "yyyyMMddHHmm"));
        } else {
            this.begin = Long.parseLong(DateUtil.formatDate(beginDate, "yyyyMMddHH"));
        }

        if (dimensionality == BaseConstant.MINUTE_DIMENSIONALITY) {
            this.end = Long.parseLong(DateUtil.formatDate(endDate, "yyyyMMddHHmm"));
        } else {
            this.end = Long.parseLong(DateUtil.formatDate(endDate, "yyyyMMddHH"));
        }
    }


    public long getBegin() {
        return begin;
    }

    public long getEnd() {
        return end;
    }

    public int getDimensionality() {
        return dimensionality;
    }

    /**
     * 获取合适的维度
     */
    private int getSuitableDimensionality(Date begin, Date end) {
        try {
            long s1 = begin.getTime();
            long s2 = end.getTime();
            long hour = (s2 - s1) / 1000 / 60 / 60;
            if (hour >= 48) {
                return BaseConstant.HOUR_DIMENSIONALITY;
            } else {
                return BaseConstant.MINUTE_DIMENSIONALITY;
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return BaseConstant.MINUTE_DIMENSIONALITY;
    }


	@Override
	public String toString() {
		return "TimeDimensionality [begin=" + begin + ", end=" + end
				+ ", dimensionality=" + dimensionality + "]";
	}
    
    
}
