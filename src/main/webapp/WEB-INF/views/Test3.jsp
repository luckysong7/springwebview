<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">





</head>
<body>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

<link rel="stylesheet" href="http://image.bandinlunis.com/common/css/common.css" type="text/css">
<link rel="stylesheet" href="http://image.bandinlunis.com/common/css/global.css" type="text/css">
<title>반디앤루니스 인터넷서점</title>
<style type="text/css">
	html	{_overflow:auto; _overflow-x:hidden}
</style>

<script type="text/javascript" src="/common/js/common.js" charset="euc-kr"></script>
<script type="text/javascript" src="/js/common.js" charset="euc-kr"></script>
<script type="text/javascript" src="/js/JUTIL/JUTIL.js" charset="utf-8"></script>
<script type="text/javascript" src="/js/jquery/jquery.min.js"></script>
<script type="text/javascript">

	function goSearch() {
		var page = parseInt($("#page").val());
		var totalPage = parseInt($("#totalPage").val());
		if(page == 1){
			showPage(0, false);
		}else if(page > totalPage){
			alert("끝 페이지보다 큰 값을 입력하셨습니다. 마지막 페이지로 이동합니다.");
			if((totalPage%2) == 0){
				showPage(totalPage, false);
			}else{
				showPage((totalPage-1), false);
			}
		}else if(page <= 0){
			alert("해당 페이지를 찾을수 없습니다. 다시 입력해주세요.");
		}else if((page%2) == 0){
			showPage(page, false);
		}else if((page%2) == 1){
			showPage((page-1), false);
		}
	}
	
	function showPage(cnt, copy){
		var pageBtn_Id = "#pageBtn_"+cnt;
		$(".pageNum a").removeClass();
		$(pageBtn_Id).addClass("on");
		var pageA_Id = "#pageA_"+cnt;
		var pageB_Id = "#pageB_"+cnt;
		if(copy){
			if(cnt == 0){
				$("#page").val("1");
			}else{
				$("#page").val(cnt);
			}
		}
		$("#newPage").val(cnt);
		$(".pageA").attr("style", "display:none;");
		$(".pageB").attr("style", "display:none;");
		$(pageA_Id).attr("style", "display:block;");
		$(pageB_Id).attr("style", "display:block;");
	}
	
	
	function prevPage(){
		var curPage = parseInt($("#newPage").val());
		var cnt = curPage - 2;
		if(cnt >= 0){
			showPage(cnt, true);
		}else{
			alert("첫 페이지입니다.");
		}
	}
	
	function nextPage(){
		var curPage = parseInt($("#newPage").val());
		var maxPage = parseInt($("#totalPage").val());
		var cnt = curPage + 2;
		if(cnt <= maxPage){
			showPage(cnt, true);
		}else{
			alert("끝 페이지입니다.");
		}
	}	
	
	function togglePreviewTab(){
		$(".naviOn").toggle();
		$(".naviOnBottom").toggle();
		$(".naviOff").toggle();
	}
	
	function zoomIn(){
		var zoomLevel = parseInt($("#zoomLevel").val());
		zoomLevel = zoomLevel + 1;
		if(zoomLevel <= 4){
			var zoom_class = "pageArea size"+zoomLevel;
			$("#pageArea").removeClass().addClass(zoom_class);
			$("#zoomLevel").val(zoomLevel);
		}else{
			alert("최대 크기입니다.");
		}
	}
	
	function zoomOut(){
		var zoomLevel = parseInt($("#zoomLevel").val());
		zoomLevel = zoomLevel - 1;
		if(zoomLevel >= 1){
			var zoom_class = "pageArea size"+zoomLevel;
			$("#pageArea").removeClass().addClass(zoom_class);
			$("#zoomLevel").val(zoomLevel);
		}else{
			alert("최소 크기입니다.");
		}
	}
	
	function getDetailInfo(){
		alert("상세정보는 상품정보 하단을 참고해주세요.");
		self.close();
	}
	
	function bookCart(prodId){
		if(confirm("쇼핑카트에 등록하시겠습니까?")){
			opener.add_basket(prodId, 1);
			self.close();
		}
	}
	
	function wishList(prodId){
		if(confirm("위시리스트에 등록하시겠습니까?")){
			opener.add_wish(prodId);
			self.close();
		}
	}
	
</script>
<style type="text/css">
bbbody{margin:0; height:100%;overflow-y:auto}
.preView { height:100%}
.pageArea { margin:0 auto; padding-right:180px;   position:relative;}
.clickArea img{vertical-align:middle;}
.pageHead{background: url("http://image.bandinlunis.com/images/detail/preView_topBg1.gif") center bottom no-repeat; height:20px; padding-top:15px;}

.pageHead .headText {float:left;padding-left:5px;}
.pageView {padding-bottom:18px; position:relative;background: url("http://image.bandinlunis.com/images/detail/preView_bottomBg1.gif") center bottom no-repeat; }
.btn_prevPage {position:absolute; cursor:pointer; top:45%;	left:-6px; width:30px; z-index:1;}
.btn_nextPage {position:absolute; cursor:pointer; top:45%; right:-6px; width:30px; z-index:1;}

.pageWrap {margin:auto; overflow:auto; z-index:17;}
.pageWrap img {}
.pageImage {border: 1px solid #c4c4c4;  overflow:hidden;background:url(/images/common/logo.gif) no-repeat 17% 42%;}
.pageView .pageA { float:left;  margin:0; overflow:hidden; padding:10px; }
.pageView .pageB { border-left:1px solid #c4c4c4;  float:right; margin:0; overflow:hidden; padding:10px; }
.preView .size1{width:845px} .preView .size1 .bsize{width:400px; _height:600px}.preView .size1 .bsize img{width:400px;}
.preView .size2{width:1045px} .preView .size2 .bsize{width:500px; _height:700px;}.preView .size2 .bsize img{width:500px;}
.preView .size3{width:1245px} .preView .size3 .bsize{width:600px; _height:800px;}.preView .size3 .bsize img{width:600px;}
.preView .size4{width:1445px} .preView .size4 .bsize{width:700px; _height:900px;}.preView .size4 .bsize img{width:700px;}
.naviOn {background: url("http://image.bandinlunis.com/images/detail/preView_rightBg1.gif") repeat-y scroll right top transparent;  position:fixed; height:100%; right: 0; top: 0; width: 219px; z-index:100}
*html .naviOn{position:absolute} 
.naviOnBottom {position:fixed; height:100%; right: 0; top: 93%; width: 185px; z-index:100}
*html .naviOnBottom{position:absolute} 
.naviTitle{	background: url("http://image.bandinlunis.com/images/detail/preview_rightTopBg1.gif") repeat-y scroll right top transparent;padding-left:15px; height:46px; width:204px; float:left;}
.previewTit{padding-top:13px; padding-left:20px;}			
					
.btnGo{float:left; padding:1px 0 0 10px;}		
.btnGo a{display: block; width:27px; height:19px; background: url("http://image.bandinlunis.com/images/detail/btn_preGo1.gif") no-repeat;}	
.btnGo a span{display:none}	

.naviOff {float:right; padding:0; height:100%; right:0; top:0; width:19px; position: absolute;}
.naviOff .btn_Open {cursor:pointer; background: url("http://image.bandinlunis.com/images/detail/btn_preOpen1.png") no-repeat;display:block; float:left; margin:0; width:19px; height:48px;}
.btn_Close {display:block; float:left; margin:-46px 0px 0 0; width:21px; z-index:1;}
.btn_Close img {cursor:pointer;}
.conTit{position:relative; float:left; text-decoration:none; color:#fff; font-family:굴림;}
.conTit .title { font-size:16px; font-weight:bold; line-height:120%;  }	
.conTit .titleS{ font-size:12px; line-height:120%;}	
.conTit .titleS2 {padding-top:15px;	 font-size:11px; line-height:100%; }	
.naviCon{float:left; position:relative; margin:11px 0 0 11px; width:177px;}
.pageCon{float:left; position:relative;}
.pageCon .inputNum{float:left; padding-bottom:0px;}
.pageCon .inputNum .Num1{float:left;}
.pageCon .inputNum .Num1 input{width:20px; height:12px; padding:3px 0 0 4px;}
.pageCon .inputNum .Num1 span{color:#fff; padding-top:1px}
.pageNum {clear:both; font-size:11px; width:177px; padding-top:5px; position:relative; }
.pageNum a {display:block; float:left; margin:2px 2px 0 0;  width:35px; height:14px; background:#fff; border:1px solid #000; text-align:center; text-decoration:none; color:#666}
.pageNum a:hover{color:#22232b;	border:1px solid #22232b; font-weight:bolder;}
.pageNum .on{border:1px solid #1f2026; display:block; color:#ff6600; font-weight:bold;}
.pageNum a span{float:left;width:17px;display:block;  text-align:center}
.pageNum a span.alt{border-right:1px solid #666}
.pageZoom {clear:both; margin:0; display:block;	padding:15px 0 15px 0; overflow:hidden;}
.pageZoom img{cursor:pointer;}	
.pageZoom li {list-style-type:none; float:left; height:37px;}
/* .toolLine1 {clear: both; border-bottom:1px solid #6d707c; width:171px; border-top:1px solid #282930; width:171px;  margin:0 0 14px 0;}*/
.toolLine1{background: url("http://image.bandinlunis.com/images/detail/preview_preLine1.gif") no-repeat;  clear: both; width:171px; height:2px; margin:0 0 14px 0; }

.titBox{position:relative; float:left; padding:0 0 30px 0;}

.btnA a{display:block; float:left; width:86px; height:36px;}	
.btnA a span{display:none}
.btnA a.bookCart {background: url("http://image.bandinlunis.com/images/detail/btn_preBookCart1.gif") no-repeat;}
.btnA a:hover.bookCart {background: url("http://image.bandinlunis.com/images/detail/btn_preBookCart1_off.gif") no-repeat;}
.btnA a.wishList {background: url("http://image.bandinlunis.com/images/detail/btn_preWishList1.gif") no-repeat;}
.btnA a:hover.wishList {background: url("http://image.bandinlunis.com/images/detail/btn_preWishList1_off.gif") no-repeat;}
.btnA a.myLibrary {background: url("http://image.bandinlunis.com/images/detail/btn_premyLibrary1.gif") no-repeat;}
.btnA a:hover.myLibrary {background: url("http://image.bandinlunis.com/images/detail/btn_premyLibrary1_off.gif") no-repeat;}
.btnA a.bookInfo {background: url("http://image.bandinlunis.com/images/detail/btn_preInfo1.gif") no-repeat; margin-top:0}
.btnA a:hover.bookInfo {background: url("http://image.bandinlunis.com/images/detail/btn_preInfo1_off.gif") no-repeat;}
</style>

</head>

<body>
<form name="previewForm" action="/front/product/previewBook.do" method="get" onsubmit="javascript:return false;">
<input type="hidden" name="prodId" value="4199420">
<input type="hidden" name="page" value="">

<input type="hidden" id="newPage" value="0"> 
<input type="hidden" id="totalPage" value="40">
<input type="hidden" id="zoomLevel" value="1">

<div class="preView">
		<div id="pageArea" class="pageArea size1">
			<div class="pageHead t_11gr">
					* 뒤 표지부터 보이는 도서는 마지막 페이지부터 역순으로 감상해주세요.
			</div>		
			
			<div class="pageView">
			
				<div class="btn_prevPage">
					<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/images/detail/btn_preLeft1.png" class="png24" alt="이전 페이지 가기"></a>
				</div>
				<div class="btn_nextPage">
					<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/images/detail/btn_preRight1.png" class="png24" alt="다음 페이지 가기"></a>
				</div>
				
				<div class="pageWrap">
					<div class="pageImage">
					
						
						
						
							<!-- 첫 페이지 -->
							
								<div class="pageA bsize" id="pageA_0">
									
								</div>
								<div class="pageB bsize" id="pageB_0">
									<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_01.jpg" alt=""></a>
								</div>							
										
					
							<!-- 2페이지부터 -->
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_2" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_02.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_2" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_03.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_4" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_04.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_4" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_05.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_6" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_06.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_6" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_07.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_8" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_08.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_8" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_09.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_10" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_10.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_10" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_11.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_12" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_12.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_12" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_13.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_14" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_14.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_14" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_15.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_16" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_16.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_16" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_17.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_18" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_18.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_18" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_19.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_20" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_20.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_20" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_21.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_22" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_22.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_22" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_23.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_24" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_24.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_24" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_25.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_26" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_26.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_26" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_27.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_28" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_28.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_28" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_29.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_30" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_30.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_30" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_31.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_32" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_32.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_32" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_33.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_34" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_34.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_34" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_35.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_36" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_36.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_36" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_37.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_38" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_38.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
								
									<div class="pageB bsize" id="pageB_38" style="display: none;">
									<!-- contents -->
										<a href="javascript:nextPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_39.jpg" alt=""></a>
									</div>
								
								
								
								
								
														
								
																

						
						
							<!-- 첫 페이지 -->
										
					
							<!-- 2페이지부터 -->
							
								<!-- div start tag -->
								
									<div class="pageA bsize" id="pageA_40" style="display: none;">
										<!-- contents -->
										<a href="javascript:prevPage();"><img src="http://image.bandinlunis.com/upload/product/4199/4199420_40.jpg" alt=""></a>
									</div>
								
								
								
								
								
								
																

						
						
					</div>
				</div>
			</div>
			
		</div>
		
		<div class="naviOn" style="display:block;">
			<div class="naviTitle">
				<img class="previewTit" alt="미리보기" src="http://image.bandinlunis.com/images/detail/preview_title1.gif">
			</div>
			<div class="btn_Close">
				<img class="btnClose" alt="네비게이션 닫기" src="http://image.bandinlunis.com/images/detail/btn_preClose1.png" onclick="javascript:togglePreviewTab();">
			</div>
			<div class="naviCon">
				<div class="pageCon">
					<div class="pageSetting">
						<div class="inputNum">
							<div class="Num1">
								<input type="text" maxlength="2;" id="page" value="1" onkeypress="javascript:goNumCheck(event);"> <span>/ 40</span>
							</div>
							<div class="btnGo">
								<a class="go1" href="javascript:goSearch();">
									<span>go</span>
								</a>
							</div>
						</div>
						<div class="pageNum">
						
							
								
									<a class="on" id="pageBtn_0" href="javascript:showPage(0, true);"><span class="alt">&nbsp;</span><span>1</span></a>
								
								
							
								
								
									<a id="pageBtn_2" href="javascript:showPage(2, true);"><span class="alt">2</span><span>3</span></a>
								
							
								
								
									<a id="pageBtn_4" href="javascript:showPage(4, true);"><span class="alt">4</span><span>5</span></a>
								
							
								
								
									<a id="pageBtn_6" href="javascript:showPage(6, true);"><span class="alt">6</span><span>7</span></a>
								
							
								
								
									<a id="pageBtn_8" href="javascript:showPage(8, true);"><span class="alt">8</span><span>9</span></a>
								
							
								
								
									<a id="pageBtn_10" href="javascript:showPage(10, true);"><span class="alt">10</span><span>11</span></a>
								
							
								
								
									<a id="pageBtn_12" href="javascript:showPage(12, true);"><span class="alt">12</span><span>13</span></a>
								
							
								
								
									<a id="pageBtn_14" href="javascript:showPage(14, true);"><span class="alt">14</span><span>15</span></a>
								
							
								
								
									<a id="pageBtn_16" href="javascript:showPage(16, true);"><span class="alt">16</span><span>17</span></a>
								
							
								
								
									<a id="pageBtn_18" href="javascript:showPage(18, true);"><span class="alt">18</span><span>19</span></a>
								
							
								
								
									<a id="pageBtn_20" href="javascript:showPage(20, true);"><span class="alt">20</span><span>21</span></a>
								
							
								
								
									<a id="pageBtn_22" href="javascript:showPage(22, true);"><span class="alt">22</span><span>23</span></a>
								
							
								
								
									<a id="pageBtn_24" href="javascript:showPage(24, true);"><span class="alt">24</span><span>25</span></a>
								
							
								
								
									<a id="pageBtn_26" href="javascript:showPage(26, true);"><span class="alt">26</span><span>27</span></a>
								
							
								
								
									<a id="pageBtn_28" href="javascript:showPage(28, true);"><span class="alt">28</span><span>29</span></a>
								
							
								
								
									<a id="pageBtn_30" href="javascript:showPage(30, true);"><span class="alt">30</span><span>31</span></a>
								
							
								
								
									<a id="pageBtn_32" href="javascript:showPage(32, true);"><span class="alt">32</span><span>33</span></a>
								
							
								
								
									<a id="pageBtn_34" href="javascript:showPage(34, true);"><span class="alt">34</span><span>35</span></a>
								
							
								
								
									<a id="pageBtn_36" href="javascript:showPage(36, true);"><span class="alt">36</span><span>37</span></a>
								
							
								
								
									<a id="pageBtn_38" href="javascript:showPage(38, true);"><span class="alt">38</span><span>39</span></a>
								
							
								
								
									<a id="pageBtn_40" href="javascript:showPage(40, true);"><span class="alt">40</span><span>&nbsp;</span></a>
								
							
							
						</div>
					</div>
					<div class="pageZoom">
						<a href="javascript:zoomIn();">
							<img class="zoomIn" alt="확대" src="http://image.bandinlunis.com/images/detail/btn_preZoomIn1.gif">
						</a> 
						<a href="javascript:zoomOut();">
							<img class="zoomOut" alt="축소" src="http://image.bandinlunis.com/images/detail/btn_preZoomOut1.gif">
						</a>
					</div>
					<p class="toolLine1"></p>
					<div class="titBox">
						<div class="conTit">
							<div class="title">직장생활의 품격</div>
							<div class="titleS2 t_11">
								장중호 저 
								
								| 메이트북스
								| 2018.10.03
							</div>					
						</div>
					</div>
					<div class="btnA">
						
						<a class="bookCart" href="javascript:bookCart('4199420');">
							<span>쇼핑카트</span>
						</a>
						
						<!-- 판매중지, 품절, 절판 -->
						
						<a class="wishList" href="javascript:wishList('4199420');">
							<span>위시리스트</span>
						</a>
						<a class="myLibrary" href="javascript:opener.jutil.bandi.blogAddMyLibrary('4199420');">
							<span>서재에 담기</span>
						</a>
						<a class="bookInfo" target="_blank" href="http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4199420">
							<span>상세정보</span>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="naviOnBottom">
			<font class="t_11gr" style="margin-top:1000px;" color="white">
				- 각 페이지를 클릭하여도<br>
				이전/다음 장으로 이동이 가능
			</font>
		</div>

		<div class="naviOff" style="display:none;">
			<div class="btn_Open" onclick="javascript:togglePreviewTab();">
				<a class="btnOpen" src="">
			</a></div><a class="btnOpen" src="">			
		</a></div><a class="btnOpen" src="">
	</a></div><a class="btnOpen" src="">




</a></form>
</body>
</html>