<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>温馨商城后台管理</title>
    <link rel="stylesheet" href="../../../static/layui/css/layui.css">
    <link rel="stylesheet" href="../../../static/css/public.css" />
    <script src="../../../static/layui/layui.js"></script>
</head>
<body style="min-width: 200px">
    <div class="layui-layout layui-layout-admin" >
        <div class="layui-header" style="background-color: #2534b4 !important;">
            <span style="color: white;font-size: 42px;font-family:'楷体',sans-serif;margin-left: 10px">温馨商城</span>
		    <ul class="layui-nav layui-layout-right">
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            锁屏
                        </a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascrpit:;" id="lock">ALT+L锁屏</a></dd>
                        </dl>
                    </li>
		      	<li class="layui-nav-item"><a href="/admin/login/logout">退出</a></li>
		    </ul>
		</div>

        <!-- 侧边栏 -->
        <div class="layui-side" style="width: 195px;margin-left: -5px;background-color: #2534b4;color: whitesmoke">
            <div class="layui-side-scroll" style="width:205px;overflow:auto">
        		<img src="" class="user_img" id="head"/>
            	<h1 class="user_name">管理员：${user.userName}</h1>
                <ul class="layui-nav layui-nav-tree" lay-filter="left-nav" style="background-color: #2534b4">
                    <li class="layui-nav-item"><!-- layui-nav-itemed-->
                        <a href="javascript:;"><i class="layui-icon">&#xe612;</i> 用户管理</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" data-url="/admin/main/user" data-id="1" class="left_nav" ><i class="layui-icon" style="font-size: 15px">&#xe613;</i>普通用户管理</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;"><i class="layui-icon">&#xe857;</i>商品管理</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" data-url="/admin/main/productType" data-id="2" class="left_nav"><i class="layui-icon">&#xe62e;</i> 商品类型管理</a></dd>
                            <dd><a href="javascript:;" data-url="/admin/main/brand" data-id="3" class="left_nav"><i class="layui-icon">&#xe60a;</i> 品牌管理</a></dd>
                            <dd><a href="javascript:;" data-url="/admin/main/product?page=1&limit=6" data-id="4" class="left_nav"><i class="layui-icon">&#xe60a;</i> 商品管理</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;"><i class="layui-icon">&#xe657;</i>订单管理</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" data-url="/admin/main/order?page=1&limit=6" data-id="5" class="left_nav"><i class="layui-icon">&#xe655;</i>订单管理</a></dd>
                            <dd><a href="javascript:;" data-url="/admin/main/print" data-id="6" class="left_nav"><i class="layui-icon">&#xe62d;</i>订单打印</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;"><i class="layui-icon">&#xe62c;</i>数据统计</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" data-url="/admin/main/accessPressure" data-id="7" class="left_nav"><i class="layui-icon">&#xe62c;</i>系统访问压力</a></dd>
                            <dd><a href="javascript:;" data-url="/admin/main/productSale" data-id="8" class="left_nav"><i class="layui-icon">&#xe62c;</i>商品销售排名</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;"><i class="layui-icon">&#xe612;</i>个人信息</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" data-url="/admin/main/changePass" data-id="9" class="left_nav"><i class="layui-icon">&#xe6b2;</i>修改密码</a></dd>
                            <dd><a href="javascript:;" data-url="/admin/main/personalData" data-id="10" class="left_nav"><i class="layui-icon">&#xe621;</i>个人资料</a></dd>
                        </dl>
                    </li><li class="layui-nav-item">
                        <a href="javascript:;"><i class="layui-icon">&#xe7ae;</i>公告管理</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" data-url="/admin/main/view" data-id="11" class="left_nav"><i class="layui-icon">&#xe7ae;</i>网站公告</a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 主体 -->
        <div class="layui-body">
            <!-- 顶部切换卡 -->
            <div class="layui-tab layui-tab-brief" lay-filter="top-tab" lay-allowClose="true" style="margin: 0">
                <ul class="layui-tab-title"></ul>
                <div class="layui-tab-content" style="padding: 0;">
                	<div class="layui-progress"  lay-filter="progress" style="background-color: rebeccapurple">
					  	<div class="layui-progress-bar" lay-percent="0%"></div>
					</div>
                </div>
            </div>
            <h1 class="admin_title"  style="height: 100%;width:100%;background-color: white;margin-top: -287px">
                <jsp:include page="bulletin.jsp"/>
            </h1>
        </div>
    </div>
    <div class="logo_shard">
        <div class="lock_box">
            <div class="layui-form-item">
                <form>
                <label class="layui-form-label">解锁密码 ：</label>
                <div class="layui-input-block">
                    <input type="text" name="" placeholder="请输入" autocomplete="off" class="layui-input lock_input">
                </div>
                </form>
            </div>
            <div class="layui-form-item text_algin">
                <button class="layui-btn lock_btn" lay-submit lay-filter="*">立即提交</button>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        layui.use('element', function(){
            var element = layui.element;

            //…
        });
        layui.use(['carousel', 'form'], function(){
            var carousel = layui.carousel
                ,form = layui.form;

            //常规轮播
            carousel.render({
                elem: '#test1'
                ,width: '100%'
                ,height: '100%'
                ,interval: 5000
            });


        });
    	(localStorage.getItem('base')) ? document.getElementsByClassName('user_img')[0].setAttribute('src',localStorage.getItem('base')) : document.getElementsByClassName('user_img')[0].setAttribute('src','../../../static/img/head.gif');
        layui.use(['layer','element'], function(){
        	
            var element  = layui.element;
            var layer = layui.layer;
            var $ = layui.jquery;
            
            var navfilter = 'left-nav';
            var nav = $('.layui-nav[lay-filter='+navfilter+']').eq(0);
            var tabfilter = 'top-tab';
            var tab = $('.layui-tab[lay-filter='+tabfilter+']').eq(0);
            var tabcontent = tab.children('.layui-tab-content').eq(0);
            var tabtitle = tab.children('.layui-tab-title').eq(0);
            $(window).resize(function() {
                //设置顶部切换卡容器度
                tabcontent.css('height',$(this).height() - 70 - 41 - 44);
                //tabcontent.height(); //头部高度 顶部切换卡高度 底部高度
                //设置顶部切换卡容器内每个iframe高度
                tabcontent.find('iframe').each(function () {
                    $(this).css('height',tabcontent.height());
                });
            }).resize();
            $('.lock_btn').click(function(){
             	if($('.lock_input').val() == 'admin'){
             		$('.logo_shard').fadeOut();
             		$('.lock_input').val('');
             	}
             	else{
             	    if ($('.lock_input').val() == ''){
                        layer.msg("请输入密码")
                    }
                    else{
                        layer.msg("密码错误，解锁失败")
                    }
                }
            })
            /**
             * 监听侧边栏导航点击事件
             */
            var active = {
	            tabAdd: function (url, id ,text) {
	                //新增一个Tab项
	                element.tabAdd('top-tab', {
	                    title: text //用于演示
	                  	,content: '<iframe data-frameid="'+id+'" frameborder="0" name="content" scrolling="yes" width="100%" src="' + url + '"></iframe>'
	                  	,id: id //实际使用一般是规定好的id，这里以时间戳模拟下
	                })
	            }
	          	,tabChange: function (id) {
	              	element.tabChange('top-tab', id); //切换到：用户管理
	              	$("iframe[data-frameid='"+id+"']").attr("src",$("iframe[data-frameid='"+id+"']").attr("src"))//切换后刷新框架
	          	}
	            ,tabDelete: function (id) {
	                element.tabDelete("top-tab", id);//删除
	            }
	            ,tabDeleteAll: function (ids) {//删除所有
	                $.each(ids, function (i,item) {
	                    element.tabDelete("top-tab", item);
	                })
	            }
	        };
	        
	        element.on('tab(top-tab)', function(data){
	        	$('.layui-tab').show();
	        	$('.admin_title').hide();
	        	$('.layui-progress-bar').fadeOut();
	        	element.progress('progress','0%');
			  	var _index = data.index;
			  	$('iframe').stop().animate({opacity:0,top:'30px'},300);
			  	$('iframe').eq(_index).animate({opacity:1,top:0},300);
			  	$('iframe').eq(_index).load(function(){
			  		$('.layui-progress-bar').fadeIn();
			  		element.progress('progress', '100%');
			  		$('.layui-progress-bar').fadeOut(20);
			  	})
			});
			element.on('tabDelete(top-tab)', function(data){
				if(tabtitle.find('li').length<1){
					$('.layui-tab').hide();
	        		$('.admin_title').show();
				}
			});
	        $(".left_nav").click(function () {
	            var dataid = $(this);
	            if ($(".layui-tab-title li[lay-id]").length <= 0) {
	                active.tabAdd(dataid.attr("data-url"), dataid.attr("data-id"),dataid.html());
	            	
	            } else {
	                var isData = false;
	                $.each($(".layui-tab-title li[lay-id]"), function () {
	                    if ($(this).attr("lay-id") == dataid.attr("data-id")) {
	                        isData = true;
	                    }
	                })
	                if (isData == false) {
	                    active.tabAdd(dataid.attr("data-url"), dataid.attr("data-id"),dataid.html());
	                }
	            }
	            active.tabChange(dataid.attr("data-id"));
	        })
	        $("#head").click(function () {
                window.open($(this).attr("src"))
            }).css("cursor","pointer");
	        $("#lock").click(function () {
                $('.logo_shard').fadeIn();
            })
	        document.addEventListener('keydown',function(e){//锁屏监听alt+l
	        	if(e.keyCode==76&&18){
	        		$('.logo_shard').fadeIn();
	        	}
	        })
        });

    </script>
</body>
</html>