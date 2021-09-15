<%--
  Created by IntelliJ IDEA.
  User: 辉
  Date: 2021/9/15
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
<script src="//cdn.bootcss.com/vue-router/3.0.1/vue-router.min.js"></script>
<script src="//cdn.bootcss.com/vuex/3.0.1/vuex.min.js"></script>
<script src="//cdn.bootcss.com/axios/0.17.1/axios.min.js"></script>
<html>
<head>
    <title>第一个vue demo</title>
</head>
<body>
<div>
    学习插值表达式{{}}
       vue常用在单个页面项目中,什么叫做单个页面项目,常用于手机移动端,指的是整个项目,只有1个页面.
       通常 锚点来跳转.没有a标签.这个锚点的跳转叫做路由
       单个页面项目的优缺点
       优点:都是HTML,代码运行流畅,可以有很多组件,可以重复使用
       缺点:不利于seo百度的收录
</div>

    <h1> 讲解jQuery 和 vue的 不同</h1>
<div>
    jquery:它是dom驱动的,所有看到的页面都要一行一行的把代码写出来,不是自动的,手动的
    <h2 id="jq-helloWord">
        <%--对比一下,在div中出入数据,你好 世界--%>
    </h2>
</div>

<div id="app">
    vue因为是单页面的,所以必须只有1个根标签,以上的h1和div都不归vue负责
    <h2>
            {{sayHello}}<br>
            {{sayEating}}<br>
            {{lightLine}}<br>
    </h2>
</div>

<script>
    $(function () {
        /*jquery的思想,找到名称是id xx的DOM,给他添加数据
        * 如果我想改变显示效果,改为你好,超市,需要改变jq的代码
        * 那么比较繁琐,因为你好 世界,没有统一的变量的地方
        * var str = "你好 世界"
        * */
        $("#jq-helloWord").text("你好,世界")//jq缺点:数据没有统一的位置可以存储
    })

    //学习vue,vue和Java很像
    var vue = new Vue({
        //new vue()括弧中,小括弧中一般放的都是{},而大括弧就是json,对象,k-v结构
        //这个大括弧中放的就是vue的选项,选项在vue官网可以查看,选项有多少种.....
        //写出vue选项的思维导图!!!!!!
        el:'#app'//把html中的div id为app的dom元素作为了挂载点
                //什么叫做挂载点:vue是
        // 以数据驱动的,new vue中都是诞生数据
                //有了数据,就需要一个dom元素,显示数据,张三是元数据
        ,data:{
            sayHello:'你好世界',
            sayEating:'加油干饭人',
            lightLine:'发射动感光波'
        }
    });

</script>

</body>
</html>
