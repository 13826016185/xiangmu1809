 $(function() {

	/*
	 需求：
	 	* 加数量
	 	* 减数量
	 	* 删除当行
	 	* 小计
	 	* 全选
	 	* 总数量和总价跟着变
	
	*/

	//接口1:查询订单表的数据，渲染到购物车：建议用字符串模板
	var arr = [];//存被选中的复选框下标
	//加数量:事件委托方式
	$('#cart').on('click', '.addnum', function() {

		//点击获取对应行的数量，加1在赋值
		var val = $(this).prev().val();
		val++;
		if(val >= 100) { //库存量
			val = 100;
		}
		//接口2：更新数据库数量
			// $.ajax({
			// 		type:"get",//请求方式
			// 		url:"api/01goodlist.php",//接口路径
			// 		async:true,//异步
			// 		data:{//传输数据
			// 			'page':1,
			// 			'qty':5
			// 		},
			// 		success:function(str){//成功回调
			// 			init(str);//数据渲染
			// 		}
			// 	});
		$(this).prev().val(val);

		subTotal($(this)); //刷新小计
	});

	//减去数量
	$('#cart').on('click', '.cutnum', function() {

		//点击获取对应行的数量，加1在赋值
		var val = $(this).next().val();
		val--;
		if(val <= 1) { //库存量
			val = 1;
		}
		//接口2：更新数据库数量
		$(this).next().val(val);

		subTotal($(this)); //刷新小计
	});

	function subTotal(now) { //小计
		var num = now.parent().find('input').val(); //数量
		var price = now.parent().prev().text();
		price = $.trim(price); //工具方法：去除前后空格
		price = price.substring(1);
				// console.log(num,price);
		var all = (num * price).toFixed(0); //保留两个小数，小计：数量*单价
		console.log(all);
		now.parent().next().html('$&nbsp;' + all);
		updateNum();
	}

	//删除当行
	$('#cart').on('click', '.good_del', function() {
		var mes = confirm('您确定要删除该行吗？');
		if(mes) {
			$(this).parent().remove();
			//接口3：删除数据库的某行
		}
		update(); //最后一行是否显示判断
		updateNum();
	});

	//更新状态
	function update() {
		if($('.addnum').size() == 0) {
			//意味着没有商品数据了
			$('#del').css('display', 'none');
		}
	}

	//全选
	var isok = true;
	$('#allchecked').on('click', function() {
		if(isok) {
			//全选 attr()只能帮到普通属性  id class title ;prop()添加有行为的属性：一般用在单选和复选框
			$(this).find('input').prop('checked', 'checked'); //设置
			$('.good_check input').prop('checked', 'checked');

		} else {
			//不选
			$(this).find('input').removeAttr('checked');
			$('.good_check input').removeAttr('checked');
		}
		isok = !isok;
		updateNum();
	});

	//复选框被勾选

	$('#cart').on('click', '.good_check input', function() {
		updateNum();
		if(arr.length==$('.good_check').size()){//控制是否全选勾上
			//证明全被勾选
			$('#allchecked input').prop('checked','checked');
			isok=false;
		}else{
			$('#allchecked input').removeAttr('checked');
			isok=true;
		}
		
	});

	//总数量和总价格改变：封装成函数
	

	function updateNum() {
		//空数组：存被勾选的行的下标
		arr.length = 0;
		var le = $('.good_check input').size(); //复选框的总个数
		for(var i = 0; i < le; i++) {
			if($('.good_check input').eq(i).prop('checked')) {
				//意味着这一行被勾选
				arr.push(i);
			}
		}

		//		console.log(arr);

		//统计被勾选的行对应的数量，累加放到底部对应位置
		//统计被勾选的行对应的小计，累加放到底部对应位置
		var num = 0; //总数量
		var totalPrice = 0; //存总价
		for(var i = 0; i < arr.length; i++) {
			num += $('.nownum').eq(arr[i]).val() * 1;
			var price = $('.good_total').eq(arr[i]).text(); //￥ 199.98
			// console.log(price);
			price = $.trim(price); //去掉前后空格
			price = (price.substring(1) * 1); //199.98
			//			console.log(price);
			totalPrice += price;
		}

		//		console.log(num);

		$('#allnum').html('已选 ' + num + ' 件商品');

		$('#allnum1').html('商品清单（' + num + ' ）');

		//		console.log(totalPrice.toFixed(2));
		$('#totalprice').html('总计（不含运费）：￥ ' + totalPrice.toFixed(2));

	}

	//全删
	$('#delall').on('click', function() {
		updateNum();
		var mes = confirm('您确定要删除多行吗？');
		if(mes) {
			for(var i = arr.length - 1; i >= 0; i--) { //找到对应的行，删除
				$('.good_check').eq(arr[i]).parent().remove();
				//接口3：删除数据库订单表多条数据
			}
		}
//		console.log(arr); //0 1 2

		update();
	});
	
	
	//手动输入价格
	$('#cart').on('blur','.nownum',function(){
		subTotal($(this));//小计变化
		updateNum();//刷新总数量和总价格
	});



});