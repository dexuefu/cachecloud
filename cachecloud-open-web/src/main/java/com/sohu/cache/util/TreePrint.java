package com.sohu.cache.util;

import com.google.common.collect.Lists;
import com.sohu.cache.vo.RedisSlowLog;

import java.util.*;

/**
 * Created by jch on 18/1/21.
 */
public class TreePrint {

    /**
     * 1、打印折纸问题
     * @param N
     */
    private static void printAll(int N) {
        printChild(1, N, false);
    }
    private static void printChild(int i,int N, Boolean down) {
        if (i > N) {
            return;
        }
        printChild(i+1, N, false);
        System.out.println(down?"up":"down");
        printChild(i+1, N, true);
    }

    //  数组中查找差值最大的两个数
    private static void getMaxMuxInArray() {

    }

    //  z字型打印数组
    private static void printMartxLikeZ() {
        int [][] aaa = {{1,2,3,4,5,6},{5,6,7,8,9,0}};
        int a=0,b=0;// 记录打印到行和列


    }

    private static void testCollectionsCopy() {
        List<String> src = new ArrayList<String>();
        src.add("111");
        src.add("222");
        src.add("333");
        src.add("444");
        //只有当desc的 size 大于或者等于src的size时才进行拷贝，否则抛出IndexOutOfBoundsException异常；
        List<String> dic = new ArrayList<String>(Arrays.asList(new String[src.size()]));
        Collections.copy(dic, src);
        dic.add("5555");
        for (String s : dic) {
            System.out.println(s);
        }
        src.add("6666");
        for (String s : src) {
            System.out.println(s);
        }
    }

    private static void testCopy() {
        RedisSlowLog redisSlowLog = new RedisSlowLog();
        redisSlowLog.setCommand("werfew");
        List<RedisSlowLog> redisSlowLogs = Lists.newArrayList();
        redisSlowLogs.add(redisSlowLog);
        List<RedisSlowLog> redisSlowLogs1 = new ArrayList<>(10);
        Collections.copy(redisSlowLogs1, redisSlowLogs);
        redisSlowLogs.get(0).setDate(new Date());
        for (RedisSlowLog s : redisSlowLogs) {
            System.out.println(s.toString());
        }
        redisSlowLog.setId(90);
        for (RedisSlowLog s : redisSlowLogs) {
            System.out.println(s);
        }
    }


    public static void main(String[] args) {
        System.out.println("中序遍历二叉树");
//        printAll(3);
        testCopy();
    }
}
