package com.sohu.cache.init;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 *
 * Created by yijunzhang on 14-9-25.
 */
public class AsyncLoad {

    // todo 需要优化
    protected ExecutorService executorService = Executors.newCachedThreadPool();


}
