'use strict';

$(function () {

	var iW = $('#imglist li').eq(0).outerWidth();

	$('#imglist li').css('left', iW);
	$('#imglist li').eq(0).css('left', 0);

	var timer = null;
	clearInterval(timer);
	var now = 0;

	timer = setInterval(next, 3000);

	function next() {
		$('#imglist li').stop(false, true);
		$('#imglist li').eq(now).animate({ 'left': -iW }, 1000);
		now = ++now >= $('#imglist li').size() ? 0 : now;

		$('#imglist li').eq(now).css('left', iW);
		$('#imglist li').eq(now).animate({ 'left': 0 }, 1000);
		light();
	}

	function light() {
		$('#light span').removeClass('active');
		$('#light span').eq(now).addClass('active');
	}

	function prev() {

		$('#imglist li').eq(now).animate({ 'left': iW }, 1000);

		now = --now < 0 ? $('#imglist li').size() - 1 : now;
		$('#imglist li').eq(now).css('left', -iW);
		$('#imglist li').eq(now).animate({ 'left': 0 }, 1000);
		light();
	}

	$('#con1').hover(function () {
		clearInterval(timer);
	}, function () {
		clearInterval(timer);
		timer = setInterval(next, 2000);
	});

	//点击切换到上一张
	$('#prev').click(function () {
		prev();
	});

	//点击切换到下一张
	$('#next').click(function () {
		//下一张
		next();
	});

	//5.点击焦点可以跳转

	$('#light span').click(function () {

		var index = $(this).index();
		if (index > now) {

			$('#imglist li').eq(now).animate({ 'left': -iW }, 1000);
			//新的
			$('#imglist li').eq(index).css('left', iW);
			$('#imglist li').eq(index).animate({ 'left': 0 }, 1000);
			now = index; //最新的一张变成index
		}
		if (index < now) {
			//从左边切入
			//旧 now：挪到左边
			$('#imglist li').eq(now).animate({ 'left': iW }, 1000);
			//新的
			$('#imglist li').eq(index).css('left', -iW);
			$('#imglist li').eq(index).animate({ 'left': 0 }, 1000);
			now = index; //最新的一张变成index
		}

		light();
	});
});