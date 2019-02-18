$(function(){

	//widow resize
	 var windowWidth = $(window).width();
	 $(window).resize(function(){
		if ($(window).width() > 768 ){
			$('#nav').show();
			$('#nav .sub_menu').hide();
		}
	});	

	//상단메뉴
	$('#nav > li').mouseenter(function(){
		if($('#nav_btn').css("display") == 'none' ){
			$('#nav_bg').stop().show();
			$(this).children('.sub_menu').stop().show();
		}
	});
	$('#nav > li').mouseleave(function(){
		if($('#nav_btn').css("display") == 'none' ){
			$('#nav_bg').stop().hide();
			$('.sub_menu').stop().hide();
		}
	});

	//모바일 메뉴
	$('#nav_btn').click(function(){
		if($('#nav_btn').css("display") == 'block' ){
			$('#nav').slideToggle();
		}
	});
	//모바일 서브메뉴
	$('#nav > li > a').click(function(){
		if($("#nav_btn").css("display") == 'block'){
			$('.sub_menu').hide();
			var obj = $(this).parent();
			if($(".sub_menu",obj).length != 0){
				$('.sub_menu',obj).slideToggle(300);
				return false;
			}
		}
	})

	//메인슬라이드
	n = 1	
	function next(){
		n++
		if( n == 7 ){
			$('#m_slider .content').css('margin-left',(1-1)* -100+'%')
			n = 2
		}
		$('#m_slider .content').animate({ 'margin-left' : (n-1) * -100+'%' } , 'slow')
		$('.breadcrumb li').removeClass('on')
		$('.btn0'+n).addClass('on')
	}	
	id = setInterval( function(){ next() } , 4500 )

	$('.breadcrumb li').click(function(){
		n = parseInt( $(this).attr('data-n') )
		$('#m_slider .content').css({ 'margin-left' : (n-1) * -100+'%'  })	
		$('.breadcrumb li').removeClass('on')       
		$('.btn0'+n).addClass('on')
		clearInterval(id)
		id = setInterval( function(){ next() } , 4500 )
	});
	
	//Top이동
	$("#bottom .scroll_top").click(function(event){    
        event.preventDefault();
        $('html,body').animate({scrollTop:$(this.hash).offset().top}, 800);
    });

	//연혁
	$('.history .year .btn01').click(function(){
		$('.history .right_content .box').hide();
		$('.history .right_content .box01').show();
		$('.history .year li span').removeClass('on');
		$('.history .year .btn01 span').addClass('on');
	})
	$('.history .year .btn02').click(function(){
		$('.history .right_content .box').hide();
		$('.history .right_content .box02').show();
		$('.history .year li span').removeClass('on');
		$('.history .year .btn02 span').addClass('on');
	})
	$('.history .year .btn03').click(function(){
		$('.history .right_content .box').hide();
		$('.history .right_content .box03').show();
		$('.history .year li span').removeClass('on');
		$('.history .year .btn03 span').addClass('on');
	})
	$('.history .year .btn04').click(function(){
		$('.history .right_content .box').hide();
		$('.history .right_content .box04').show();
		$('.history .year li span').removeClass('on');
		$('.history .year .btn04 span').addClass('on');
	})
	$('.history .year .btn05').click(function(){
		$('.history .right_content .box').hide();
		$('.history .right_content .box05').show();
		$('.history .year li span').removeClass('on');
		$('.history .year .btn05 span').addClass('on');
	})
	$('.history .year .btn06').click(function(){
		$('.history .right_content .box').hide();
		$('.history .right_content .box06').show();
		$('.history .year li span').removeClass('on');
		$('.history .year .btn06 span').addClass('on');
	})
	$('.history .year .btn07').click(function(){
		$('.history .right_content .box').hide();
		$('.history .right_content .box07').show();
		$('.history .year li span').removeClass('on');
		$('.history .year .btn07 span').addClass('on');
	});
	$('.history .year .btn08').click(function(){
		$('.history .right_content .box').hide();
		$('.history .right_content .box08').show();
		$('.history .year li span').removeClass('on');
		$('.history .year .btn08 span').addClass('on');
	});

	//채용정보
	$('.sub01_04 .box01').show();
	$('.sub01_04 .list .menu01').click(function(){
		$('.sub01_04 .s_table').hide();
		$('.sub01_04 .box01').show();
		$('.sub01_04 .list li p').removeClass('on');
		$('.sub01_04 .list .menu01 p').addClass('on');
	})
	$('.sub01_04 .list .menu02').click(function(){
		$('.sub01_04 .s_table').hide();
		$('.sub01_04 .box02').show();
		$('.sub01_04 .list li p').removeClass('on');
		$('.sub01_04 .list .menu02 p').addClass('on');
	})
	$('.sub01_04 .list .menu03').click(function(){
		$('.sub01_04 .s_table').hide();
		$('.sub01_04 .box03').show();
		$('.sub01_04 .list li p').removeClass('on');
		$('.sub01_04 .list .menu03 p').addClass('on');
	})
	$('.sub01_04 .list .menu04').click(function(){
		$('.sub01_04 .s_table').hide();
		$('.sub01_04 .box04').show();
		$('.sub01_04 .list li p').removeClass('on');
		$('.sub01_04 .list .menu04 p').addClass('on');
	})
	$('.sub01_04 .list .menu05').click(function(){
		$('.sub01_04 .s_table').hide();
		$('.sub01_04 .box05').show();
		$('.sub01_04 .list li p').removeClass('on');
		$('.sub01_04 .list .menu05 p').addClass('on');
	})

	//사회책임경영
	$('.sub01_03 .box04 li .more_btn').click(function(){
		$('.sub01_03 .box04 li .more_btn').hide();
		$('.sub01_03 .box04 li .closed_btn').show();
		$('.sub01_03 .box04 li p.more_text').fadeIn();
	})
	$('.sub01_03 .box04 li .closed_btn').click(function(){
		$('.sub01_03 .box04 li .closed_btn').hide();
		$('.sub01_03 .box04 li .more_btn').show();
		$('.sub01_03 .box04 li p.more_text').hide();
	})

	//창업비용
	$('.sub04_02 .mobile_list .menu01').click(function(){
		$('.sub04_02 .mobile_table').hide();
		$('.sub04_02 .mobile_table01').show();
		$('.sub04_02 .mobile_list li p').removeClass('on');
		$('.sub04_02 .mobile_list .menu01 p').addClass('on');
	})
	$('.sub04_02 .mobile_list .menu02').click(function(){
		$('.sub04_02 .mobile_table').hide();
		$('.sub04_02 .mobile_table02').show();
		$('.sub04_02 .mobile_list li p').removeClass('on');
		$('.sub04_02 .mobile_list .menu02 p').addClass('on');
	})
	$('.sub04_02 .mobile_list .menu03').click(function(){
		$('.sub04_02 .mobile_table').hide();
		$('.sub04_02 .mobile_table03').show();
		$('.sub04_02 .mobile_list li p').removeClass('on');
		$('.sub04_02 .mobile_list .menu03 p').addClass('on');
	})

	//widow resize
	 var windowWidth = $(window).width();
	 $(window).resize(function(){
		if ($(window).width() > 768 ){
			$('.sub04_02 .mobile_table').hide();
		}
		else if ($(window).width() < 768 ){
			$('.sub04_02 .mobile_table01').show();
		}
	});	

})