### CacheCloud团队于2017年3月出版实体书《Redis开发与运维》，[更多详情请见](#cc10)

## <a name="index"/>目录&nbsp;&nbsp;(具体细节[wiki文档](https://github.com/sohutv/cachecloud/wiki "Cachecloud Wiki")、[博客](http://cachecloud.github.io/ "Cachecloud page")、QQ群：534429768)
* [一、CacheCloud是做什么的](#cc1)
* [二、CacheCloud提供哪些功能](#cc2)
* [三、CacheCloud解决什么问题](#cc3)
* [四、CacheCloud提供的价值](#cc4) 
* [五、CacheCloud在搜狐的规模](#cc5)
* [六、CacheCloud环境需求](#cc6)
* [七、CacheCloud相关文档](#cc7)
    * [1.快速开始](#cc7)
    * [2.常见问题](#cc7)
    * [3.开发计划](#cc7)
    * [4.已存在Redis接入CacheCloud](#cc7)
    * [5.迁移工具](#cc7)
* [八、CacheCloud开发计划TODO LIST](#cc8)
* [九、CacheCloud已知用户](#cc9)
* [十、Redis开发与运维图书](#cc10)

<a name="cc1"/>

## 一、CacheCloud是做什么的

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CacheCloud提供一个Redis云管理平台：实现多种类型(**Redis Standalone**、**Redis Sentinel**、**Redis Cluster**)自动部署、解决Redis实例碎片化现象、提供完善统计、监控、运维功能、减少运维成本和误操作，提高机器的利用率，提供灵活的伸缩性，提供方便的接入客户端。

![](http://i0.itc.cn/20170624/3084_753fa711_4d1d_7f51_7405_07723c1e43f6_1.png)

<a name="cc2"/>

## 二、CacheCloud提供哪些功能

+ **监控统计：**	提供了机器、应用、实例下各个维度数据的监控和统计界面。
+ **一键开启：**	Redis Standalone、Redis Sentinel、Redis Cluster三种类型的应用，无需手动配置初始化。
+ **Failover：**	支持哨兵,集群的高可用模式。
+ **伸缩：**	    提供完善的垂直和水平在线伸缩功能。
+ **完善运维：**    提供自动运维和简化运维操作功能，避免纯手工运维出错。
+ **方便的客户端**  方便快捷的客户端接入。
+ **元数据管理：**    提供机器、应用、实例、用户信息管理。
+ **流程化：**      提供申请，运维，伸缩，修改等完善的处理流程
+ **一键导入：**      [一键导入已经存在Redis](http://cachecloud.github.io/2016/04/17/%E5%B7%B2%E5%AD%98%E5%9C%A8Redis%E6%8E%A5%E5%85%A5CacheCloud/)


<a name="cc3"/>

## 三、CacheCloud解决什么问题

![](http://i3.itc.cn/20160125/3084_e6f2f51c_54cf_4081_450f_c69998e74d01_1.png)

#### 1.部署成本

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Redis多机(Redis-Sentinel, Redis-Cluster)部署和配置相对比较复杂，较容易出错。例如：100个redis数据节点组成的redis-cluster集群，如果单纯手工安装，既耗时又容易出错。

#### 2.实例碎片化

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作为一个Redis管理员(可以看做redis DBA)需要帮助开发者管理上百个Redis-Cluster集群，分布在数百台机器上，人工维护成本很高，需要自动化运维工具。

#### 3. 监控、统计和管理不完善

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一些开源的Redis监控和管理工具，例如：RedisLive(Python)、Redis Commander(Node.js)，Redmon(Ruby)无论从功能的全面性(例如配置管理，支持Redis-Cluster等等)、扩展性很难满足需求。

#### 4. 运维成本

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Redis的使用者需要维护各自的Redis，但是用户可能更加善于使用Redis实现各种功能，但是没有足够的精力和经验维护Redis。Redis的开发人员如同使用MySQL一样，不需要运维Mysql服务器，同样使用Redis服务，不要自己运维Redis，Redis由一些在Redis运维方面更有经验的人来维护（保证高可用，高扩展性），使得开发者更加关注于Redis使用本身。

#### 5. 伸缩性

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本产品支持Redis最新的Redis-Sentinel、Redis-Cluster集群机构，既满足Redis高可用性、又能满足Redis的可扩展性，具有较强的容量和性能伸缩能力。

#### 6. 经济成本

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机器利用率低，各个项目组的Redis较为分散的部署在各自服务器上，造成了大量闲置资源没有有效利用。 

#### 7. 版本不统一 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;各个项目的Redis使用各种不同的版本，不便于管理和交互。

<a name="cc4"/>

## 四、CacheCloud提供的价值

+ 规模化自动运维：	降低运维成本，降低人为操作出错率。
+ 自由伸缩：	    提供灵活的伸缩性，应用扩容/收缩成本降低，机器资源得到重复利用。
+ 团队提升，开源贡献:提升云产品开发设计经验,自己作为开发者和使用者。

<a name="cc5"/>

## 五、CacheCloud在搜狐的规模

+ 每天500+亿次命令调用
+ 2T+的内存空间
+ 1600+个Redis实例
+ 200+台机器

<a name="cc6"/>

## 六、CacheCloud环境需求

+ JDK 7+
+ Maven 3
+ MySQL 5.5
+ Redis 3

<a name="cc7"/>

## 七、相关文档

+ [快速开始](https://github.com/sohutv/cachecloud/wiki/3.%E6%9C%8D%E5%8A%A1%E5%99%A8%E7%AB%AF%E6%8E%A5%E5%85%A5%E6%96%87%E6%A1%A3)
+ [常见问题](http://cachecloud.github.io/2016/04/12/CacheCloud%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98/)
+ [已存在Redis接入CacheCloud](http://cachecloud.github.io/2016/04/17/%E5%B7%B2%E5%AD%98%E5%9C%A8Redis%E6%8E%A5%E5%85%A5CacheCloud/)
+ [资源归档](http://cachecloud.github.io/2016/04/12/CacheCloud%E6%96%87%E6%A1%A3%E5%BD%92%E6%A1%A3/)
+ [开发计划](http://cachecloud.github.io/2016/04/17/v2%E8%AE%A1%E5%88%92/)
+ [迁移工具](http://cachecloud.github.io/2016/06/28/1.2.%20%E8%BF%81%E7%A7%BB%E5%B7%A5%E5%85%B7%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E/)

### 更多内容参考：[wiki文档](https://github.com/sohutv/cachecloud/wiki)、[cachecloud官方博客](http://cachecloud.github.io/)

<a name="cc8"/>

## 八、开发计划-TODO LIST

[后期开发计划](http://cachecloud.github.io/2016/04/17/v2%E8%AE%A1%E5%88%92/)

<a name="cc9"/>

## 九、已知用户

![](http://i0.itc.cn/20170315/3084_f3e50a44_c732_9ac2_e117_90759d8e406b_1.png)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;除此之外，还有天津联怡科技有限公司、瑞友科技、厦门美好出行物联网技术有限公司、北京九瑞网络科技有限公司、深圳市深软信息技术有限公司、欧乐在线科技有限公司、慧科教育、上海仁画信息股份有限公司等。

<a name="cc10"/>

## 十、图书
由CacheCloud团队撰写的实体书《Redis开发与运维》(机械工业出版)已在各大网店售卖，本书包含了CacheCloud团队在Redis规模化开发运维大量经验，以及Cachecloud更为系统的介绍，[目录介绍和购买地址](https://cachecloud.github.io/2016/10/24/Redis3%E5%BC%80%E5%8F%91%E8%BF%90%E7%BB%B4%E6%9C%80%E4%BD%B3%E5%AE%9E%E8%B7%B5-%E7%9B%AE%E5%BD%95/)，欢迎大家指教和购买。

### 相关样章

1.[Redis架构之防雪崩设计：网站不宕机背后的兵法](https://mp.weixin.qq.com/s/TBCEwLVAXdsTszRVpXhVug)

2.[Redis的内存优化](https://cachecloud.github.io/2017/02/16/Redis%E5%86%85%E5%AD%98%E4%BC%98%E5%8C%96/)

3.[Redis的Linux系统优化](https://cachecloud.github.io/2017/02/16/Redis%E7%9A%84Linux%E7%B3%BB%E7%BB%9F%E4%BC%98%E5%8C%96/)

4.[Redis客户端常见异常分析](https://cachecloud.github.io/2017/02/20/Redis%E7%83%AD%E7%82%B9key%E5%AF%BB%E6%89%BE%E4%B8%8E%E4%BC%98%E5%8C%96/)

5.[Redis热点key寻找与优化](https://cachecloud.github.io/2017/02/20/Redis%E7%83%AD%E7%82%B9key%E5%AF%BB%E6%89%BE%E4%B8%8E%E4%BC%98%E5%8C%96/)

6.[Redis无限全量复制问题分析与优化](https://cachecloud.github.io/2016/11/24/%E5%85%A8%E9%87%8F%E5%A4%8D%E5%88%B6%E9%97%AE%E9%A2%98/)

![](http://i0.itc.cn/20170527/3084_cfcdad5a_0310_c17e_f80b_064afb296b75_1.jpeg)



## 十一、支持与帮助

如果你觉得CacheCloud对你有帮助，欢迎Star。
 
