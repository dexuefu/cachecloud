package com.sohu.cache.schedule.jobs;

import org.quartz.JobExecutionContext;

/**
 * 基于服务器的job
 */
public class ServerJob extends CacheBaseJob {

    @Override
    public void action(JobExecutionContext context) {
//        try {
//            JobDataMap dataMap =  context.getMergedJobDataMap();
//            SchedulerContext schedulerContext = context.getScheduler().getContext();
//            ApplicationContext applicationContext = (ApplicationContext)schedulerContext.get(APPLICATION_CONTEXT_KEY);
//            ServerStatusCollector serverStatusCollector = applicationContext.getBean("serverStatusCollector", ServerStatusCollector.class);
//            String ip = dataMap.getString(ConstUtils.HOST_KEY);
//            serverStatusCollector.fetchServerStatus(ip);
//        } catch (SchedulerException e) {
//            logger.error(e.getMessage(), e);
//        } catch (Exception e) {
//            logger.error(e.getMessage(), e);
//        }
    }
}
