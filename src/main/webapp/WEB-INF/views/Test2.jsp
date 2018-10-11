<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test2</title>

<link rel="stylesheet" href = "/springwebview/resources/css/class.css" type = "text/css">
<link rel="stylesheet" href = "/springwebview/resources/css/common.css" type = "text/css">
<link rel="stylesheet" href = "/springwebview/resources/css/pStyle.css" type = "text/css">
<link rel="stylesheet" href = "/springwebview/resources/css/detail_default.css" type = "text/css">



</head>
<body>
<div id="conLocation" class="pos_rel" style="margin-bottom:26px">
			<ul class="location cate_location" id="locationArea"><li class="home"><a href="/">홈</a></li><li class="home_1dep"><a href="/front/main.do">도서</a></li><li><a href="/front/product/bookCategoryMain.do?cateId=3&amp;fullCateId=0003" onmouseover="navi.subLayerView(1, this);" onmouseout="navi.subLayerHide(1);"><u>시/에세이/기행</u></a></li><li><a href="/front/product/bookCategoryMain.do?cateId=4939&amp;fullCateId=00034939" onmouseover="navi.subLayerView(3, this);" onmouseout="navi.subLayerHide(3);"><u>에세이</u></a></li><li><a href="/front/product/bookCategoryMain.do?cateId=116&amp;fullCateId=000349390116" onmouseover="navi.subLayerView(4939, this);" onmouseout="navi.subLayerHide(4939);"><b><u>명상/명언/잠언에세이</u></b></a></li></ul>
			<div class="sns_zone">
				<ul class="share_sns">
				<!-- <li><a href="#"><span class="sp_btn url">URL 복사</span></a></li>
				<li><a href="#"><span class="sp_btn pinterest">핀터레스트 공유</span></a></li> -->
				<li><a href="javascript:snsSend('tw', '365 매일 읽는 긍정의 한줄', '2893258');"><span class="sp_btn twitter">트위터 공유</span></a></li>
				<li><a href="javascript:snsSend('fb', '365 매일 읽는 긍정의 한줄', '2893258');"><span class="sp_btn facebook">페이스북 공유</span></a></li>
				</ul>
			</div>
		</div>

<div class="wrap_contents">	
			<!-- 왼쪽 영역 -->
			<div class="inner_left">
				
					<div class="thumb_bookCover">
						<img src="http://image.bandinlunis.com/upload/product/2893/2893258.jpg" alt="365 매일 읽는 긍정의 한줄" onerror="this.src='http://image.bandinlunis.com/images/common/noimg_type01.gif'">
					</div>
				
				
                     <p class="btn_txt">
						
					</p>
                
				
				
				

				<div class="mt30 pos_rel">
					<div>
						<strong>매장 재고현황 <a href="javascript:popLayer('prodNum')"><span class="sp_btn help">?</span></a></strong> 
					</div>
					<div class="mt3">
						 <!-- 일서,잡시 매장 재고 표시 안함. -->
							 <table cellpadding="0" cellspacing="0" class="commTable_s">
			                  	<colgroup><col width="65"><col width="65"><col width="71"></colgroup>
									<tbody><tr> 
										<th>인터넷</th>
										<th>신세계<br>강남점</th>
										<th>부산 신세계<br>센텀시티점</th>
									</tr>
									<tr>
										<td>
											
											 - 
										</td>
										<td><a href="javascript:popBookshelf('05');">0</a></td>
										<td><a href="javascript:popBookshelf('03');">0</a></td>
									</tr>
									<tr> 
										<th>롯데<br>스타시티점</th> 
										<th>롯데<br>월드몰점</th>
										<th>신림역점</th>
									</tr>
									<tr> 
										<td><a href="javascript:popBookshelf('15');">0</a></td>
										<td><a href="javascript:popBookshelf('09');">0</a></td>
										<td><a href="javascript:popBookshelf('17');">0</a></td>
									</tr>
									<tr>   
										<th>사당역점</th>
										<th>목동점</th>
										<th>롯데몰<br>수원점</th>	
									</tr>
									<tr>   
										<td><a href="javascript:popBookshelf('14');">0</a></td> 
										<td><a href="javascript:popBookshelf('21');">0</a></td>
										<td><a href="javascript:popBookshelf('04');">0</a></td>	
									</tr>
									<tr>	 
										<th>대구<br>신세계점</th>	
										<th>롯데<br>울산점</th>
										<th>신세계<br>김해점</th>
									</tr>
									<tr>		 
										<td><a href="javascript:popBookshelf('37');">0</a></td>
										<td><a href="javascript:popBookshelf('19');">0</a></td>
										<td><a href="javascript:popBookshelf('36');">0</a></td>
									</tr>
									<tr> 
										<th>롯데피트인<br>산본점</th>
										<th>여의도<br>신영증권점</th> 
										<th></th>
									</tr> 
									<tr> 
										<td><a href="javascript:popBookshelf('38');">0</a></td>
										<td><a href="javascript:popBookshelf('39');">0</a></td> 
										<td></td>
									</tr>
			                </tbody></table>
			                <div class="t_11gr mt5">재고숫자를 클릭하시면 <strong class="t_blue">매장연락처 및 도서 위치를 확인</strong>하실 수 있으며, <strong class="t_blue">소량재고 도서는 주문 전 매장에 연락</strong>주시면 정확한 재고 현황을 안내해 드리겠습니다.</div>
			               
							
		                 
					</div>
					
					<!-- 재고현황 안내 LAYER -->
			          <div class="bookViewPop" id="prodNum" style="visibility:hidden; width:300px; top:0; left:0">
			              <h3 class="mLine">재고현황 안내</h3>
			              <div class="laypopCon"> 
			                  <ul class="t_11gr pt10 overflow">
			                  	<li class="dot_comm_11">비교적 정확한 수치이오나 매장별 재고수는 현장 구매 등 여러 변수에 의해 실제 재고와 다를 수 있습니다.</li>
			                  	<li class="dot_comm_11 mt5">정확한 재고를 확인하시려면 매장으로 직접 문의하시기 바랍니다.</li>
			                  	<li class="dot_comm_11 mt5">각 매장의 연락처 및 위치를 확인하시려면 재고숫자를 클릭하십시오.</li>
			                  	<li class="dot_comm_11 mt5">센트럴시티점의 매장명이 신세계강남점으로 변경되었습니다.</li>
			                  </ul> 
			              </div>
			              <p class="btnClose"><img src="http://image.bandinlunis.com/images/common/btn_close02.gif" alt="close" style="cursor:pointer;" onclick="javascript:popHidden('prodNum')"></p>
			          </div>
				</div>
			
			</div>
			<!--// 왼쪽 영역 -->



			<!-- 오른쪽 영역 -->
			<div class="inner_right">
				<!--// 상품 구매영역 -->
				<div class="row_item">
					<div class="group_tag">
						

                        <span class="sp_tag recomm">반디추천</span>
                        
                        <span class="sp_tag best">베스트</span>                        
                                                				
								<span class="sp_tag benefit">배송 품질 보상</span>
			
					</div>
					<div class="group_title">
						<h1>
						<!-- <h3 class="txt_front">그림으로 배우는 원리와 구조</h3> -->
	
	                        <span class="txt_main">365 매일 읽는 긍정의 한줄</span>
	                    
	                    </h1>
					</div>
					
					<div class="group_inside">
						<ul>
							<li><a href="javascript:goSearchAuthor('린다피콘');">린다피콘</a> 저</li>
							
							<li><a href="javascript:goSearchAuthor('유미성');">유미성</a> 역 </li>
							
							 
	                        <li><a href="javascript:goSearchPublish('책이있는풍경');">책이있는풍경</a></li>

	                        	<li>2008년 12월 28일</li>
                       
						</ul> 
					</div>
				</div>
				<div class="row_item">
					<div class="group_info">
						<ul class="txt_price">					
							
						<li>
							<div class="tbl_left">
								<span>정가</span>
							</div>
							<div class="tbl_right">
								<span class="list_price">10,000원</span>
							</div>
						</li>

						<li>
							<div class="tbl_left mt12"><span>판매가</span></div>
							<div class="tbl_right" style="">
								<span class="sale_price">9,000<span>원</span></span> 
								<span class="point_red">[10% 할인]</span> 
								
							</div>
						</li>
				
						<li class="payco_event" id="paycoLayer" style="display: none;">
							<div class="tbl_left mt10"><span>페이코혜택가</span></div>
							<div class="tbl_right">
								<span class="card_price">7,500<span>원</span></span>  
								<span class="t_blue">[1,500원 할인]</span> <a href="javascript:popLayer('paycoInfo')"><span class="sp_btn help">?</span></a>
							</div>
							<!-- 페이코 안내 -->
					         <div class="bookViewPop" id="paycoInfo" style="visibility:hidden;left:112px;top:18px; width:270px">
					             <h3 class="mLine">페이코 혜택가 안내 </h3>
					             <div class="laypopCon"> 
					                 <p class="t_11gr mt5">
												</p><div class="dot_comm_11 t_11gr">3천원 이상 구매 시 1,500원 할인</div>
												<div class="dot_comm_11 t_11gr">ID당 총 3회 할인가능</div>
					                 <p></p> 
					             </div>
					             <p class="btnClose"><img src="http://image.bandinlunis.com/images/common/btn_close02.gif" alt="close" style="cursor:pointer;" onclick="javascript:popHidden('paycoInfo')"></p>						
					         </div>
						</li>
						
						<li class="payco_event" id="paycoLayer2" style="display: none;">
							<div class="tbl_left mt10"><span>페이코혜택가</span></div>
							<div class="tbl_right">
								<span class="card_price">8,500<span>원</span></span>  
								<span class="t_blue">[500원 할인]</span> <a href="javascript:popLayer('paycoInfo2')"><span class="sp_btn help">?</span></a>
							</div>
							<!-- 페이코 안내 -->
					         <div class="bookViewPop" id="paycoInfo2" style="visibility:hidden;left:112px;top:18px; width:270px">
					             <h3 class="mLine">페이코 혜택가 안내 </h3>
					             <div class="laypopCon"> 
					                 <p class="t_11gr mt5">
												</p><div class="dot_comm_11 t_11gr">3천원 이상 구매 시 500원 할인</div>
												<div class="dot_comm_11 t_11gr">ID당 총 3회 할인가능</div>
					                 <p></p> 
					             </div>
					             <p class="btnClose"><img src="http://image.bandinlunis.com/images/common/btn_close02.gif" alt="close" style="cursor:pointer;" onclick="javascript:popHidden('paycoInfo2')"></p>						
					         </div>
						</li>
						
						<li>
							<div class="tbl_left mt3"><span>제휴할인</span></div>
							<div class="tbl_right"> 
								<a href="javascript:popLayer('cardSaleInfo')"><span class="sp_btn bsale">카드할인/포인트결제 안내</span></a>
								<a href="javascript:popLayer('freeInt')"><span class="sp_btn bfree">무이자</span></a>
								  <!-- 제휴할인 -->
						          <div class="bookViewPop" id="cardSaleInfo" style="visibility:hidden; right:212px; top:0; width:450px;height:425px">
						              <h3 class="mLine">카드할인/포인트결제 안내 </h3>
						              <div class="laypop_scroll mt15" style="height:300px">
						                 <h4>제휴카드</h4>
						                  <table cellpadding="0" cellspacing="0" class="storeNum card_info">
						                  	<colgroup><col width="150"><col></colgroup>
						                  	<tbody><tr><th>반디앤루니스 롯데카드</th><td>결제금액 최대 25% 청구할인 (1만원 이상 결제건에 한해 월 2회, 건당 최대 1만원 할인)</td></tr>
											<!-- <tr><th>썸타는 우리체크카드</th><td>결제금액 최대 20% 할인(CASH-BACK)<br>※ 이벤트기간 발급분에 한함 <a href="http://www.bandinlunis.com/front/event/viewPromotionEvent.do?evtSeq=26829" class="btn_w_comm btype_a4" style="text-decoration:none">자세히보기</a></td></tr> -->
						                  	<tr><th>반디앤루니스 우리V카드</th><td>결제금액 10% 청구할인</td></tr>                  	
						                  </tbody></table> 
						                  <h4 class="mt20">포인트결제</h4>
						                  <table cellpadding="0" cellspacing="0" class="storeNum card_info">
						                  	<colgroup><col width="150"><col></colgroup>
						                  	<tbody><tr><th>OK캐쉬백 포인트</th><td>최소 10원부터 전액 사용 or 1% 적립</td></tr> 
						                  	<tr><th>현대카드 M포인트</th><td>결제금액의 최대 10% 사용 가능</td></tr>       
						                  	<tr><th>신한카드 포인트</th><td>결제금액의 최대 10% 사용 가능(일부카드)</td></tr>
						                  	<tr><th>하나(구.외환) 포인트</th><td>보유 한도 내에서 100% 사용 가능</td></tr>						                  	 
						                  	<tr><th>씨티카드 포인트</th><td>결제금액의 최대 50% 사용 가능</td></tr>  						                  	          	
						                  </tbody></table> 
						                  <h4 class="mt20">할인카드</h4>
						                  <table cellpadding="0" cellspacing="0" class="storeNum card_info">
						                  	<colgroup><col width="150"><col></colgroup> 	
						                  	<tbody><tr><th>NH농협 TAKE5카드</th><td>20% 청구할인(Edu Pack)</td></tr>
						                  	<tr><th>채움 플래티늄 멀티카드</th><td>20% 청구할인</td></tr>
						                  	<tr><th>모바일 Tmoney 신한카드</th><td>10% 청구할인</td></tr>
						                  	<tr><th>신한카드 Shopping</th><td>10% 청구할인</td></tr>
						                  	<tr><th>NH농협 체크카드</th><td>10% 청구할인</td></tr>
						                  	<tr><th>NH20 해봄 신용카드</th><td>10% 청구할인</td></tr>
						                  	<tr><th>씨티 클리어 카드</th><td>7% 청구할인</td></tr>
						                  	<tr><th>NH20 해봄 체크카드</th><td>5% 청구할인</td></tr>
						                  	<tr><th>NH농협 LADY다솜카드</th><td>5% 청구할인</td></tr>
						                  	<tr><th>신한카드 큐브</th><td>5% 청구할인</td></tr>
						                  	<tr><th>신한카드 큐브 PLATINUM#</th><td>5% 청구할인</td></tr>       	
						                  </tbody></table> 
						              </div>
						              <div class="al_right mt10 mr10"><a href="/pages/front/service/serviceCard.jsp#st01" target="_blank"><button class="btn_more_2014"><span>더보기</span></button></a></div>
						              <p class="btnClose"><img src="http://image.bandinlunis.com/images/common/btn_close02.gif" alt="close" style="cursor:pointer;" onclick="javascript:popHidden('cardSaleInfo')"></p>
						          </div>
						          
						          <div class="bookViewPop" id="freeInt" style="visibility:hidden; right:212px; top:0; width:450px">
						              <h3 class="mLine">무이자 할부 안내 </h3>
						              <div><iframe id="iframeCardInfo" src="/pages/front/product/iframeCardInfo.jsp" width="100%" frameborder="0" scrolling="no" height="541"></iframe> </div> 					             
						              <p class="btnClose"><img src="http://image.bandinlunis.com/images/common/btn_close02.gif" alt="close" style="cursor:pointer;" onclick="javascript:popHidden('freeInt')"></p>
						          </div>
							</div>
						</li>
						
						<li>
							<div class="tbl_left mt3"><span>적립금</span></div>
							<div class="tbl_right">
								<span class="save_price">500<span>원 적립</span></span> <span class="sub_info">[5%P]</span> 
								<span class="ml5 lspM">- 5만원이상 구매시 2천원 / 멤버십 최대3% <strong>추가적립</strong> <a href="javascript:popLayer('addPoint')"><span class="sp_btn help">?</span></a></span>
								<div style="margin:7px 0 0 122px">
						         	<span class="txt_ad">바로ON 접속하면 2% <strong>추가 적립</strong></span>	
									<a href="/favorite.do#st01" target="_blank"><span class="sp_btn move">?</span></a>				
						         </div>
								 <!-- 추가 적립금 안내 -->
						         <div class="bookViewPop" id="addPoint" style="visibility:hidden; right:212px;top:18px; width:320px">
						             <h3 class="mLine">추가 적립금 안내 </h3>
						             <div class="laypopCon">
						                 <p class="mt15"><strong>[2천원 추가 적립]</strong></p>
						                 <p class="mt5">
						                 		총 주문금액 5만원 이상 구매 시 2,000원 추가 적립
						                 </p>
						                 <p class="mt5">
											</p><div class="dot_comm"> 도서(eBook포함)만 구매 시 적립 대상에서 제외</div>
											<div class="dot_comm mt5">해외구매 음반/DVD 적립 대상에서 제외</div>
											<div class="dot_comm mt5"><strong>업체배송상품</strong>은 적립 대상에서 제외 <br>(상품상세 및 카트에서 업체배송 여부 확인 가능)</div>
						                 <p></p>
						                 <div class="btnR mt5 t_11br4">
					                        <a href="/pages/front/service/serviceAddPoint.jsp#st01"><strong>자세히 보기 &gt; </strong></a>
					                    </div>
					                    <p class="mt20"><strong>[멤버십 추가 적립]</strong></p>
					                     <div class="mt10">
						                  	<p class="dot_comm">슈퍼루니 : <strong>3%</strong> 추가 적립</p>
						                  	<p class="dot_comm">골드루니 : <strong>2%</strong> 추가 적립</p>
						                  	<p class="dot_comm">실버루니 : <strong>1%</strong> 추가 적립</p>
						                  </div>
						                 <p class="t_11gr mt5"> 단, 국내도서, eBook만 구매 시 적립 불가</p>
						                 <div class="btnR mt5 t_11br4">
					                        <a href="/pages/front/service/serviceMembership.jsp#st01"><strong>서비스 안내 및 유의사항 보기 &gt; </strong></a>
					                    </div>
						             </div>
						             <p class="btnClose"><img src="http://image.bandinlunis.com/images/common/btn_close02.gif" alt="close" style="cursor:pointer;" onclick="javascript:popHidden('addPoint')"></p>						
						         </div>
							</div>
						</li>
						<li>
							<div class="tbl_left" id="naverMileageRateTit" style="display:none;">
								<span>네이버마일리지</span>
							</div>
							<div class="tbl_right" id="naverMileageRateInfo" style="display:none;">
								<strong><font color="#64CD3C"><span id="naverMileageRate"></span></font> 적립 <img src="http://image.bandinlunis.com/images/common/naverOn.png"> </strong>
								<img src="http://image.bandinlunis.com/images/common/btnW_naver_q.gif" alt="네이버마일리지안내" style="cursor:pointer;" onclick="popNaverMileageInfo();">
							</div>
						</li>
						</ul>
					</div>
					 					
							 			
					
				</div>
				
				
				<div class="row_item">
					<div class="group_info">
						<ul class="txt_shipping">
						<li style="display:none;">
							<div class="tbl_left">
								<span>배송구분</span>
							</div>
							<div class="tbl_right"> 
									업체배송(반디북)
							</div>
						</li>
						<li>
							<div class="tbl_left">
								<span>배송료</span>
							</div>
							<div class="tbl_right"> 
									
                                	10,000원 이상 구매시 <strong>무료배송</strong>  
							</div>
						</li>			
                           		
                           			<li>
                           				<div class="tbl_left"><span>수령예상일</span></div>
                           				<div class="tbl_right"><strong class="t_red">2018년 10월 12일 (금)</strong> <a href="javascript:popLayer('deliveryInfo')"><span class="sp_btn help">?</span></a> </div>
                           				 <!-- 수령예상일 안내 -->
								         <div class="bookViewPop" id="deliveryInfo" style="visibility:hidden; top:10px;left:10px; width:320px">
								             <h3 class="mLine">수령예상일 안내 </h3>
								             <div class="laypopCon">
								                 <p class="t_11gr mt5">
								            			주문하신 상품이 택배를 통해 배송지에 도착할 것으로 예상되는 날짜입니다. 천재지변, 택배사 사정 등으로 인해 수령예상일에 다소 오차가 생길 수 있습니다. <br><br>
											여러 상품을 함께 주문하신 경우 수령예상일이 가장 늦은 날짜에 맞춰 함께 배송됩니다.
								                 </p>
								             </div>
								             <p class="btnClose"><img src="http://image.bandinlunis.com/images/common/btn_close02.gif" alt="close" style="cursor:pointer;" onclick="javascript:popHidden('deliveryInfo')"></p>
								
								         </div> 
                           			</li>
                           		
                           
						</ul>
						
						  <!-- 지역변경 레이어 -->
						  <div class="bookViewPop zip_code" id="zipCode" style="visibility:hidden; top:40px;left:80px;">
						  	<h3 class="mLine">당일배송 가능지역 검색 </h3>
						  	<p class="btnClose"><img src="http://image.bandinlunis.com/images/common/btn_close02.gif" alt="close" style="cursor:pointer;" onclick="javascript:popHidden('zipCode')"></p>				
						  	<div class="zip_tap">
								<ul class="tap_menu">
<!-- 								<li id="jibun" class="on" ><a style="cursor:pointer;">지번 주소 찾기</a></li><li id="doro" class="alt"><a style="cursor:pointer;">도로명주소 찾기</a></li> -->
								</ul>
							</div>
							<div class="zip_contents">
								<div name="search_doro" id="search_doro">
								<p class="box_notice">
									<strong>“도로명주소”를 쉽게 찾아보세요</strong><br>
									1. 도로명으로 검색하기 (예, “직지길” or “직지길+322”)<br>
									2. 건물명으로 검색하기 (예, “반디앤루니스빌딩”)<br>
									3. 동(읍/면/리) 으로 검색 (예, “인사동” or “인사동+43”)<br>
									4. 도로명주소를 모르실 경우 도로명주소 안내시스템(<a href="http://www.juso.go.kr" target="_blank">http://www.juso.go.kr</a>)에서 확인해주세요.
								</p>
								<div class="item">
									<input name="searchType" type="radio" value="doro" id="c1" class="i_radio" checked=""><label for="c1" class="i_label">도로명+건물번호</label>
									<input name="searchType" type="radio" value="bldName" id="c2" class="i_radio"><label for="c2" class="i_label">건물명</label>
									<input name="searchType" type="radio" value="dong" id="c3" class="i_radio"><label for="c3" class="i_label">동명+지번</label>
								</div>
								<div class="item">
									<span class="txt_basic">시/도</span>
									<select name="sido" onchange="javascript:changeDist(this.value);" class="slt_zipcode">
										<option value="" selected="">전체</option>
										<option value="01">서울특별시</option>
										<option value="02">부산광역시</option>
										<option value="03">대구광역시</option>
										<option value="04">인천광역시</option>
										<option value="05">광주광역시</option>
										<option value="06">대전광역시</option>
										<option value="07">울산광역시</option>
										<option value="08">세종특별자치시</option>
										<option value="09">강원도</option>
										<option value="10">경기도</option>
										<option value="11">경상남도</option>
										<option value="12">경상북도</option>
										<option value="13">전라남도</option>
										<option value="14">전라북도</option>
										<option value="15">제주특별자치도</option>
										<option value="16">충청남도</option>
										<option value="17">충청북도</option>
									</select>
									<span class="txt_basic">시/군/구</span>
									<select name="sigungu" class="slt_zipcode">
										<option value="">전체</option>
									</select>
								</div>
								<div class="item " id="doroArea">
									<label for="temp_input" class="i_screen_hide" style="position: absolute; display: block;">도로명, ex)직지길</label>
									<input type="text" name="searchDoro" id="searchDoro" class="i_text short" onkeypress="javascript:(event.keyCode == 13)? goSearch() : ''; javascript:preventSpace(event);">
									<label for="temp_input2" class="i_screen_hide" style="position: absolute; left: 160px; display: block;">건물번호, ex) 322</label>
									<input type="text" class="i_text short" id="bldNum" name="bldNum" onkeydown="javascript:(event.keyCode == 13)? goSearch() : ''; javascript:preventChar(event);">
									<a style="cursor:pointer;" onclick="javascript:goSearch();" class="btn_small"><span class="search">검색</span></a>
								</div>
								<div class="item hide" id="bldArea">
									<label for="temp_input" class="i_screen_hide" style="position: absolute; display: block;">건물명, ex)반디앤루니스빌딩</label>
									<input type="text" name="searchBld" id="searchBld" class="i_text long" onkeypress="javascript:(event.keyCode == 13)? goSearch() : ''; javascript:preventSpace(event);">
									<a style="cursor:pointer;" onclick="javascript:goSearch();" class="btn_small"><span class="search">검색</span></a>
								</div>
								<div class="item hide" id="dongArea">
									<label for="temp_input" class="i_screen_hide" style="position: absolute; display: block;">동명, ex)인사동</label>
									<input type="text" name="searchDong" id="searchDong" class="i_text short" onkeypress="javascript:(event.keyCode == 13)? goSearch() : ''; javascript:preventSpace(event);">
									<label for="temp_input2" class="i_screen_hide" style="position: absolute; left: 160px; display: block;">지번</label>
									<input type="text" name="searchKJibun" id="searchKJibun" class="i_text short" onkeydown="javascript:(event.keyCode == 13)? goSearch() : ''; javascript:preventChar(event);">
									<a style="cursor:pointer;" onclick="javascript:goSearch();" class="btn_small"><span class="search">검색</span></a>
								</div>
								</div>
								<div name="search_jibun" id="search_jibun" style="display: none;">
									<p class="box_notice">
										주소의 동(읍/리/면) 또는 마지막 부분을 입력하신 후 검색을 누르세요.
									</p>
									<div class="item">
										<label for="temp_input" class="i_screen_hide" style="position: absolute; display: block;">지번 검색</label>
										<input type="text" name="jibunDong" id="jibunDong" class="i_text long" onkeypress="javascript:(event.keyCode == 13)? goSearchJibun() : ''"> 
										<a style="cursor:pointer;" onclick="javascript:goSearchJibun();" class="btn_small"><span class="search">검색</span></a>
									</div>
								</div>
								<div style="display:none;" name="search_result" id="search_result">
									<p class="txt_notice">총 <a style="color:red" id="txt_count">0</a>건, 검색결과 주소를 클릭하시면 자동입력 됩니다.</p>
									<table cellpadding="0" cellspacing="0" class="tbl_subject">
										<caption>제목 테이블</caption>
										<colgroup><col width="115"><col width="315"></colgroup>
										<tbody><tr>
											<th><strong>우편번호</strong></th><th><strong>주소</strong></th>
										</tr>
									</tbody></table>
									<div class="tbl_frame" id="zipCodeList">
										<table cellpadding="0" cellspacing="0" class="">
											<tbody><tr>
												<td class="txt_blank" id="default_txt">검색된 주소가 없습니다.</td>
											</tr>
										</tbody></table>
									</div>
								</div>
								
							</div>
						</div> 
					</div>
				</div>	
				
					<div class="row_item prod_notice"><div>
						<p class="t_red">이책의 개정판 정보</p>
						
						
							<p class="mt5">
								<a href="/front/product/detailProduct.do?prodId=3548871"><strong>365 매일 읽는 긍정의 한 줄[개정판]</strong></a>
								<span class=" ml10">
									린다 피콘 저 | 책이있는풍경 | 2012년 11월
						
								</span>
							</p>
						
					</div></div>
				
							
					<div class="row_item buy_group">						
						<div class="group_info">
							<div class="tbl_qty">
								<span class="txt_num">수량</span>
														
								
								<input type="hidden" id="maxOrdCnt_2893258" value="9999">
								
		           					<input type="text" id="prodCnt_2893258" value="1" class="inp_num" size="3" style="text-align:right;ime-mode:disabled;" onkeydown="javascript:goNumCheck(event);" onkeyup="javascript:addProdCnt('2893258');">
		           					<span class="btn_updn_wrap">
		           						<span class="btn_num_up" onclick="javascript:addProdCnt('2893258', 1);" style="cursor:pointer;"><img src="/images/order/btn_num_up.gif" alt=""></span>
		           						<span class="btn_num_dn" onclick="javascript:addProdCnt('2893258', -1);" style="cursor:pointer;"><img src="/images/order/btn_num_down.gif" alt=""></span>
		           					</span>
							</div>
							<div class="tbl_ad">								
								<span class="txt_ad">더욱 새로워진 반디앤루니스 옴니채널 <a href="/pages/front/service/serviceBookSelf.jsp#st01" target="_blank"><strong class="point_red">북셀프3.0</strong></a>을 확인하세요. </span>	
								<a href="/pages/front/service/serviceBookSelf.jsp#st01" target="_blank"><span class="sp_btn move">자세히</span></a>					
							</div>
						</div>
						<div class="group_info fl_clear buy_btn">
							<div class="btn_zone_left pos_rel"> 
								<a href="javascript:add_basket_cnt('2893258');" class="btn_big"><span class="box_bookcart">쇼핑카트 담기</span></a>
								<a href="javascript:go_buy_cnt('2893258');" class="btn_big"><span class="box_quickbuy">바로 구매</span></a>								
								
								<a href="javascript:add_wish_array_common('2893258', true);" class="btn_big"><span class="box_wishlist">위시리스트</span></a>	
								<div class="widget_btn">
									<a href="javascript:jutil.bandi.blogAddMyLibrary('2893258');"><span class="bookshelf">서재담기</span></a>
									<a href="javascript:addThemaBook('2893258');"><span class="theme">테마담기</span></a>
								</div>
								<!-- 모든 매장 재고수 LAYER -->
								  
							</div>

							<div class="mt15 pos_rel fl_left" id="naverPayDirect" style="display: none;">
								<a href="javascript:go_buy_cnt('2893258', 'Y');"><img src="/images/detail/2014/btn_naverpay.gif" alt="네이버페이 구매"></a>
								<span><img src="/images/detail/2014/txt_naverpay.gif" alt="네이버 ID로 간편결제, 네이버페이"></span>
								<a href="javascript:popLayer('naverpayInfo')"><span class="sp_btn help" style="margin-top:22px">?</span></a> 
						         <div class="bookViewPop" id="naverpayInfo" style="visibility:hidden;top:-20px;left:60px;width:320px">
						             <h3 class="mLine">네이버페이는? </h3>
						             <div class="laypopCon">
						                 <p class="t_11gr mt5">
						            			네이버ID로 별도 앱 설치 없이 신용카드 또는 은행계좌 정보를 등록하여
												네이버페이 비밀번호로 결제할 수 있는 간편결제 서비스 입니다. 
						                 </p>
						             </div>
						             <p class="btnClose"><img src="http://image.bandinlunis.com/images/common/btn_close02.gif" alt="close" style="cursor:pointer;" onclick="javascript:popHidden('naverpayInfo')"></p> 
						         </div> 
							</div>

						</div>
					</div>
					
				
				
				<div class="etc_info">
					<!-- 에디터의 한마디 -->
	                
					<div class="vote">
						<strong>회원리뷰</strong>
						<div class="medium_ratings">
							<span style="width:89%"></span>
						</div>
						<span class="medium_ratings_num">
									
							8.91
							 
							<span class="ml10">리뷰[<strong>91</strong>] 간단평[<strong>39</strong>] 테마[<strong>18</strong>]</span>
						</span>
						<a href="#sub02" class="btn_w_comm btype_a4">참여하기</a>
					</div>
					
					
					<div class="isbn_info">
						
						<span class="alt"><strong>ISBN</strong>: 9788995584194</span>
						
						
								<span>페이지 정보 준비중</span>
							
			
							
								<span>105 x 148 (㎜) </span>
				
						
					</div>
								
				</div>
				
			</div>
			<!--// 오른쪽 영역 -->
			
			<div class="inner_merge">
				<div class="row_item">
					<div class="section_left">
						<h4 class="txt_title">지금 이책은</h4>
						<ul>
						<li>판매지수 : <strong>27,303</strong></li>
				
									
										<li>										
											<a href="/front/display/listBest.do?searchType=top&amp;recommendYear=2013&amp;recommendMonth=7&amp;recommendWeek=1&amp;cateId=">
												
												주간
												종합: 
												<strong>99</strong>위		
											</a>						
										</li>
									
							
										<li>										
											<a href="/front/display/listBest.do?searchType=top&amp;recommendYear=2010&amp;recommendMonth=1&amp;recommendWeek=3&amp;cateId=9">
												
												주간
												자기계발: 
												<strong>3</strong>위		
											</a>						
										</li>
									
									
										<li>										
											<a href="/front/display/listBest.do?searchType=top&amp;recommendYear=2009&amp;recommendMonth=10&amp;recommendWeek=5&amp;cateId=4">
												
												주간
												인문/교양/철학: 
												<strong>24</strong>위		
											</a>						
										</li>
									
								
										<li>										
											<a href="/front/display/listBest.do?searchType=top&amp;recommendYear=2017&amp;recommendMonth=5&amp;recommendWeek=1&amp;cateId=3">
												
												주간
												시/에세이/기행: 
												<strong>80</strong>위		
											</a>						
										</li>
									
								
									
										<li>주간 Top100: <strong>114</strong>주</li>
								
									
										<li>
																
										<a href="/front/display/recommendMedia.do?recommendGrpSeq=105&amp;recommendType=02&amp;selectDay=2010/5/31">
										주간 미디어 소개도서: <strong>2010.5 </strong>
										</a> 
										</li>
									
									
						</ul>
						
						
						
					</div>
					<div class="section_center">						
							<h4 class="txt_title">이 분야의 베스트셀러</h4>
							
							<ul>
								
								<li>
									<a href="javascript:goDetailBook('3983105');">
											
												<img src="http://image.bandinlunis.com/upload/product/3983/3983105.jpg" alt="" class="d_imgLine" onerror="this.src='http://image.bandinlunis.com/images/common/noimg_type04.gif';">
									
									</a>
									<a href="javascript:goDetailBook('3983105');" class="txt_subject"><strong>언어의 온도[100만부 돌파 기념 양장 특별판]</strong></a>
									<span class="txt_writer">이기주</span>
									<strong class="point_red">12,420원 </strong>
								</li>
								
								<li>
									<a href="javascript:goDetailBook('4181047');">
									
												<img src="http://image.bandinlunis.com/upload/product/4181/4181047.jpg" alt="" class="d_imgLine" onerror="this.src='http://image.bandinlunis.com/images/common/noimg_type04.gif';">
													
									</a>
									<a href="javascript:goDetailBook('4181047');" class="txt_subject"><strong>죽고 싶지만 떡볶이는 먹고 싶어</strong></a>
									<span class="txt_writer">백세희</span>
									<strong class="point_red">12,420원 </strong>
								</li>
								
								<li>
									<a href="javascript:goDetailBook('4157737');">
										
												<img src="http://image.bandinlunis.com/upload/product/4157/4157737.jpg" alt="" class="d_imgLine" onerror="this.src='http://image.bandinlunis.com/images/common/noimg_type04.gif';">
											
										
									</a>
									<a href="javascript:goDetailBook('4157737');" class="txt_subject"><strong>곰돌이 푸, 행복한 일은 매일 있어</strong></a>
									<span class="txt_writer">곰돌이 푸</span>
									<strong class="point_red">10,800원 </strong>
								</li>
								
							</ul>	
							
					</div>
					<div class="section_right">
							
								<a href="javascript:parent.goBannerUrl('http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4199070', '_self', '112410');"><script>showImgSwf("http://image.bandinlunis.com/upload/banner/20180928/banner20180928144309.jpg");</script><img src="http://image.bandinlunis.com/upload/banner/20180928/banner20180928144309.jpg"></a>
						
					</div>
				</div>
			</div>
			
			<!--// 상품 구매영역 -->
			
			<div class="tap_zone" id="sub01">
				<ul>
				<li class="on"><a href="#sub01">상품 정보</a></li>
				<li><a href="#sub02">회원리뷰</a></li>
				<li><a href="#sub03">반품/교환</a></li>
				<li><a class="alt"></a></li> <!-- 마지막 기본틀 -->
				</ul>
			</div>
			
			
            <!-- 책정보 -->
            

<script type="text/javascript" src="/js/map.js"></script>

				
<script type="text/javascript">
jQuery(document).ready(function() {

	DTL_THEMA();
	
	if(jQuery("#cutBookDesc  BR:eq(6)").length > 0) {
		jQuery("#cutBookDesc  BR:eq(6)").after('cutBookDescStart');
		jQuery("#cutBookDesc").html(jQuery("#cutBookDesc").html().replace("cutBookDescStart", '<div id="openBookDesc" style="display:none">'));
		jQuery("#cutBookDesc").html(jQuery("#cutBookDesc").html()+'</div>');
		jQuery("#bookDescBtn").html('<a id="bookDesc" href="javascript:descOnOff(\'openBookDesc\');"><span  class="link_more">펼쳐보기</span></a>');
	}

	if(jQuery("#cutIndexDesc BR:eq(6)").length > 0) {
		jQuery("#cutIndexDesc BR:eq(6)").after('cutIndexDescStart');
		jQuery("#cutIndexDesc").html(jQuery("#cutIndexDesc").html().replace("cutIndexDescStart", '<div id="openIndexDesc" style="display:none">'));
		jQuery("#cutIndexDesc").html(jQuery("#cutIndexDesc").html()+'</div>');
		jQuery("#indexDescBtn").html('<a id="indexDesc" href="javascript:descOnOff(\'openIndexDesc\');"><span  class="link_more">펼쳐보기</span></a>');
	}
	
});

	function descOnOff(id) {
		if(id == 'openBookDesc') {
			if(document.getElementById('openBookDesc').style.display == "none") {
				jQuery("#openBookDesc").show();
				jQuery("#bookDesc").html("<span  class=link_close>닫기</span>");
			} else {
				jQuery("#openBookDesc").hide();
				jQuery("#bookDesc").html("<span  class=link_more>펼쳐보기</span>");
				window-location('#sub05');
			}
		} else {
			if(document.getElementById('openIndexDesc').style.display == "none") {
				jQuery("#openIndexDesc").show();
				jQuery("#indexDesc").html("<span  class=link_close>닫기</span>");
			} else {
				jQuery("#openIndexDesc").hide();
				jQuery("#indexDesc").html("<span  class=link_more>펼쳐보기</span>");
				window-location('#cutIndexDesc');
			}
		}
	}

	function DTL_THEMA() {
		
		var parameters = {pc : "15386376871911235982234", dp : "DTL_THEMA", cust : "luckysong7", ctnt_id : "2893258" };
		var HTML = "";
		var loggingUrl = "";

		jQuery.getJSON("https://so.bandinlunis.com:9061/so-engine-mysql/so/recommend?jsoncallback=?&frmt=json&char_set=EUC-KR&item_fld=ITEM_NAME&item_fld=AUTHOR_NAME&item_fld=SALE_COST&item_fld=DISCOUNT_RATE_FINAL&item_fld=ITEM_IMGPATH&item_fld=ITEM_VALUE&item_fld=SCORE&item_fld=HEAVY_YN&item_fld=PROD_TYPE&item_fld=PROD_TYPE_NAME&item_fld=CATE_NAME", parameters, function(data) {

			if(data.dpList[0].status == "Success" && data.dpList[0].scenarioResultList[0].status == "Success") {

				loggingUrl = escape(data.dpList[0].scenarioResultList[0].loggingUrl);
				
				HTML +=	'<div class="row_item">';
				HTML +=	'	<div class="title_zone">';
				HTML +=	'		<h3 class="txt_title">고객이 테마북을 통해 같이 묶은 다른 상품</h3>';
				HTML +=	'	</div>';
				HTML +=	'	<div class="box_contents">';
				HTML +=	'		<ul class="thumb_list">';
				
				jQuery.each(data.dpList[0].scenarioResultList[0].itemList.items, function(i,itemList) {

					if(itemList.properties != undefined) {

						var itemMap = new Map();
						jQuery.each(itemList.properties, function(j,item) {
							itemMap.put(item.key, item.value);
						});

						HTML +=	'	<li>';
						errorImg = "this.src='http://image.bandinlunis.com/images/common/noimg_type04.gif'"
						HTML +=	'		<span class="inp_check" style="width:10px">&nbsp;</span>'
						HTML +=	'		<a href="/pages/front/recommend/logging.jsp?prodId='+itemMap.get("ITEM_VALUE")+'&loggingUrl='+loggingUrl+'"><img src="http://image.bandinlunis.com/upload'+itemMap.get("ITEM_IMGPATH")+'" onerror="'+errorImg+'"></a>';
						HTML +=	'		<p>';
						HTML +=	'			<span class="t_11gr">['+itemMap.get("CATE_NAME")+']</span><br>';
						HTML +=	'			<span class="txt_title"><a href="/pages/front/recommend/logging.jsp?prodId='+itemMap.get("ITEM_VALUE")+'&loggingUrl='+loggingUrl+'">'+itemMap.get("ITEM_NAME")+'</a></span>';
						HTML +=	'		</p>';
						HTML +=	'	</li>';
					}
				});
				HTML +=	'		</ul>';
				HTML +=	'	</div>';
				HTML +=	'</div>';
				jQuery("#RECOMMEND_LOGGING").attr("src",data.dpList[0].scenarioResultList[0].loggingUrl);
			}
			if(HTML.length>100) {
				jQuery("#DTL_THEMA").show();
				jQuery("#DTL_THEMA").html(HTML);
			}
		});
	}	

	function popAuthorInterest(authorSeq, authorName, type, seq) {

		if (isLogin() == false) {
			goLoginPopUp();
			return;
		}

		var returnUrl = location.href;
		window.open("/front/author/popUpAuthorInterest.do?type="+type+"&authorSeq="+authorSeq+"&authorName="+authorName+"&seq="+seq, "searchPopup", "width=420,height=230,status=yes,scrollbars=yes");
	}
	
	function chkSeriesAll(chkVal){
		showMoreSeriesProd();
		check_all(document.getElementsByName('seriesProdId'), chkVal);
	}
	
	// 쇼핑카트
	function addSeriesProdCarts() {
	
		var obj 	= document.getElementsByName("seriesProdId");
		var p_arr = "";
		var cnt = 0;
		
		for(var i=0;i<obj.length;i++){
			if(obj[i].checked){
				if(cnt>0){
					p_arr += ",";
				}
				p_arr += obj[i].value;
				cnt++;
			}
		}
		
		if(p_arr==""){
			alert('선택된 항목이 없습니다.');
			return;
		}
		
	
		var tmpArr	= p_arr.split(",");
		var resultArr	= Array();
		var cntArr		= Array();
		
		for(var i=0 ; i < tmpArr.length ; i++){
			resultArr.push(" ");
			cntArr.push(1);
		}
	
		add_basket_array_common(p_arr,resultArr.join(","), cntArr.join(","),resultArr.join(","), true, callBack_);
	}
	
	function callBack_()
	{
		alert('장바구니에 추가 하였습니다');
	}
	
	function showMoreSeriesProd(){
		jQuery(".moreSeriesInfo").show();
		jQuery("#seriesClose").show();
		jQuery("#seriesMore").hide();
	}
	
	function hideMoreSeriesProd(){
		jQuery(".moreSeriesInfo").hide();
		jQuery("#seriesMore").show();
		jQuery("#seriesClose").hide();
	}
</script>

			
						
						<!-- 상품 추가 정보 영역 -->
						<div class="inner_info">
							<!-- 공지사항 -->
							
								<div class="row_item">
									<div class="box_contents">
										<p>ㆍ<strong>[알림]</strong> 출판사(공급처) 사정으로 인하여 일부 상품정보에 대한 구성이 늦어질 수 있사오니 양해 부탁드립니다.  문의사항은 <span class="t_uline"><a href="/front/help/helpContactUsForm.do" class="point_bandi">1:1상담메뉴</a></span>를 이용해주세요.</p>
									</div>
								</div>
							
							<!--// 공지사항 -->
							
							
							<!-- 이 책과 함께 구매한 책 -->
							<div class="row_item">
								<div class="title_zone">
									<h3 class="txt_title">이 책과 함께 구매한 책</h3>
								</div>
								<div class="box_contents">
									<ul class="thumb_list">
										<!-- loop -->
										
										<li>
											<span class="inp_check" style="width:10px">&nbsp;</span>
												<a href="javascript:goDetailBook('2921226');">
													
						
															<img src="http://image.bandinlunis.com/upload/product/2921/2921226.jpg" onerror="this.src='http://image.bandinlunis.com/images/common/noimg_type04.gif';">
														
												</a>
											<p>
												<span class="txt_title"><a href="javascript:goDetailBook('2921226');">회사가 붙잡는 사람들의 1% 비밀</a></span>
												<span class="block t_11gr">신현만</span>
												<span class="block point_red"><strong>10,800원</strong></span>
											</p>
										</li>
										
										<li>
											<span class="inp_check" style="width:10px">&nbsp;</span>
												<a href="javascript:goDetailBook('2899184');">
													
															<img src="http://image.bandinlunis.com/upload/product/2899/2899184.jpg" onerror="this.src='http://image.bandinlunis.com/images/common/noimg_type04.gif';">
														
												</a>
											<p>
												<span class="txt_title"><a href="javascript:goDetailBook('2899184');">4개의 통장</a></span>
												<span class="block t_11gr">고경호</span>
												<span class="block point_red"><strong>9,900원</strong></span>
											</p>
										</li>
										
										<li>
											<span class="inp_check" style="width:10px">&nbsp;</span>
												<a href="javascript:goDetailBook('2951836');">
													
															<img src="http://image.bandinlunis.com/upload/product/2951/2951836.jpg" onerror="this.src='http://image.bandinlunis.com/images/common/noimg_type04.gif';">
														
												</a>
											<p>
												<span class="txt_title"><a href="javascript:goDetailBook('2951836');">이기는 습관 2</a></span>
												<span class="block t_11gr">김진동</span>
												<span class="block point_red"><strong>10,800원</strong></span>
											</p>
										</li>
										
										<li>
											<span class="inp_check" style="width:10px">&nbsp;</span>
												<a href="javascript:goDetailBook('2793299');">
														
															<img src="http://image.bandinlunis.com/upload/product/largeimage/2793299.jpg" onerror="this.src='http://image.bandinlunis.com/images/common/noimg_type04.gif';">
													
												</a>
											<p>
												<span class="txt_title"><a href="javascript:goDetailBook('2793299');">디자인 경영 - 기업 혁신과 브랜드가치 창출을 위한</a></span>
												<span class="block t_11gr">브리짓보르자모조타</span>
												<span class="block point_red"><strong>17,100원</strong></span>
											</p>
										</li>
										
										<li>
											<span class="inp_check" style="width:10px">&nbsp;</span>
												<a href="javascript:goDetailBook('2417807');">
													
															<img src="http://image.bandinlunis.com/upload/product/2417/2417807.jpg" onerror="this.src='http://image.bandinlunis.com/images/common/noimg_type04.gif';">
														
												</a>
											<p>
												<span class="txt_title"><a href="javascript:goDetailBook('2417807');">더 리더 - 책 읽어주는 남자</a></span>
												<span class="block t_11gr">베른하르트슐링크</span>
												<span class="block point_red"><strong>9,720원</strong></span>
											</p>
										</li>
										
										<!-- //loop -->
									</ul>
								</div>
							</div>
							<!-- //이 책과 함께 구매한 책 -->
							
							
							<!-- //동영상소개-->
							
							
							<!-- 묶음상품정보 -->
							
							
							<!-- 연관 이벤트/기획전 -->
							
							<!--// 연관 이벤트/기획전 -->
							
							<!-- 이 책이 속한 분야 -->
							<div class="row_item">
								<div class="title_zone">
									<h3 class="txt_title">이 책이 속한 분야</h3>
								</div>
								<div class="box_contents">
										<ul>
											
											<li class="mb10">
												<a href="/front/product/bookCategoryMain.do?cateId=3">시/에세이/기행</a> 
												
												 &gt; 
												
												<a href="/front/product/bookCategoryMain.do?cateId=4939&amp;fullCateId=00034939">에세이</a> 
												
												 &gt; 
												
												<a href="/front/product/bookCategoryMain.do?cateId=116&amp;fullCateId=000349390116">명상/명언/잠언에세이</a> 
												
												<a href="/front/product/bookCategoryMain.do?cateId=&amp;fullCateId=000349390116"></a> 
											</li>
											
											<li class="mb10">
												<a href="/front/product/bookCategoryMain.do?cateId=9">자기계발</a> 
												
												 &gt; 
												
												<a href="/front/product/bookCategoryMain.do?cateId=821&amp;fullCateId=00090821">성공/처세</a> 
												
												 &gt; 
												
												<a href="/front/product/bookCategoryMain.do?cateId=822&amp;fullCateId=000908210822">성공스토리</a> 
												
												 &gt; 
												
												<a href="/front/product/bookCategoryMain.do?cateId=823&amp;fullCateId=0009082108220823">성공스토리일반</a> 
											</li>
											
											<li class="mb10">
												<a href="/front/product/bookCategoryMain.do?cateId=9">자기계발</a> 
												
												 &gt; 
												
												<a href="/front/product/bookCategoryMain.do?cateId=821&amp;fullCateId=00090821">성공/처세</a> 
												
												 &gt; 
												
												<a href="/front/product/bookCategoryMain.do?cateId=826&amp;fullCateId=000908210826">마인드콘트롤</a> 
												
												<a href="/front/product/bookCategoryMain.do?cateId=&amp;fullCateId=000908210826"></a> 
											</li>
											
										</ul>
								</div>
							</div>
							<!-- //이 책이 속한 분야 -->
							
							<!-- 시리즈도서 -->
							
							<!-- //시리즈도서 -->
							
							<!-- 북트레일러 
							<div class="row_item">
								<div class="title_zone">
									<h3 class="txt_title">북트레일러</h3>
								</div>
								<div class="bg_booktrailer">
									<p class="bg_film"></p>
									<iframe style="margin:13px" width="640" height="360" src="http://www.youtube.com/embed/Uyg39wqDjD0?rel=0" frameborder="0" allowfullscreen></iframe>
									<p class="bg_film"></p>
								</div>
								<p class="txt_help"><span class="btn_small">동영상이 제대로 보이지 않으세요?</span><a href="#" class="btn_small"><span class="box_help">FAQ 보기</span></a></p>
							</div>
							// 북트레일러 -->
							
							<!-- 책소개 -->
							<div class="row_item" id="sub05">
									<div class="title_zone">
										<h3 class="txt_title">책 소개</h3>
										<div class="btn_zone_right">
											<a href="javascript:goInquiry('2893258');" class="btn_small"><span class="txt_link">상품문의 / 정보수정 요청 &gt;</span></a>
										</div>
									</div>

										
											<div class="box_contents">
												<div class="group_txt" id="cutBookDesc">
													
													
													
													<div class="sub_title_zone"><h4 class="box_tag">출판사 리뷰</h4></div>
													
<br>
<br>	
<br>	
<br>		출판사 서평
<br>		위로
<br>	
<br><div id="openBookDesc" style="display:none">	
<br>	
<br>	
<br>		
<br>			
<br>		
<br>				
<br>					인생의 힘이 되는 365일 명언의 향기
<br>
<br>일상생활 속에서 명쾌한 해답을 얻고 싶을 때 매일 한 페이지씩 넘기면서 마음을 다잡을 수 있을 것이다.
<br>되도록 가까이에 꽂아두고 하루를 정리할 때마다. 혹은 하루를 시작할 때 계속해서 좋은 글을 접하도록 한다. 인생을 변화시키는 것은 그런 습관에서부터 시작된다. 일 년 동안 그들을 내 스승으로 삼아 알차게
<br>하루하루를 꾸며가도록 하자.
<br>
<br>어떻게 살아야 하는지 인생의 큰 원칙을 제시하는 위인의 한마디
<br>
<br>살아가며 자신의 원칙이 흔들리는 것을 종종 경험할 것이다. 무엇이 옳고 그른지 ...
<br>					
<br>				
<br>				
<br>					인생의 힘이 되는 365일 명언의 향기
<br>
<br>일상생활 속에서 명쾌한 해답을 얻고 싶을 때 매일 한 페이지씩 넘기면서 마음을 다잡을 수 있을 것이다.
<br>되도록 가까이에 꽂아두고 하루를 정리할 때마다. 혹은 하루를 시작할 때 계속해서 좋은 글을 접하도록 한다. 인생을 변화시키는 것은 그런 습관에서부터 시작된다. 일 년 동안 그들을 내 스승으로 삼아 알차게
<br>하루하루를 꾸며가도록 하자.
<br>
<br>어떻게 살아야 하는지 인생의 큰 원칙을 제시하는 위인의 한마디
<br>
<br>살아가며 자신의 원칙이 흔들리는 것을 종종 경험할 것이다. 무엇이 옳고 그른지 판단할 수 없고, 끝없는 절망만 주위를 감싸고 있다. 그럴 때 이 책의 한 페이지를 펼쳐보면, "we are all something, but none of us are everything.-모두가 소중한 존재이다. 어느 누구보다 더 중요한 사람은 존재하지 않는다."라는 블레즈 파스칼의 말이 조심스레 희망을 이야기한다.
<br>나치의 탄압으로 은든 생활을 한 소녀 안네 프랑크는 그 어두운 공간에서 자연의 아름다움과 경이를 노래했다.
<br>"근심이 많고,외롭고 불행한 사람들을 치료할 수 있는 최고의 비법은 혼자서 조용히 하늘과 자연과 신을 느낄 수 있는 곳을 찾아가는 것이다. 그곳에서만 모든 것이 제대로 돌아가고 있음을 느끼고, 신은 인간이 자연 속에서 행복을 느끼기를 바란다는 걸 알 수 있기 때문이다."
<br>또 "지금 우리를 향해 다가오고 있는 미지의 축복에 감사하라(Give thanks unknown blessings already on their way)."라는 아메리카 원주민 속담은 절망적일 때 어떻게 희망을 품을 수 있는가에 대한 작은 힌트가 된다.
<br>꿈이 있는 사람들은 역경을 이겨낼 수 있다. 이 책은 꿈을 꾸게 해준다. 그리고 독선으로 치닫던 나를 인류의 오랜 지혜에 귀를 기울이게 해준다. 시간에 의해 검증된 것이니만큼 그것은 분명 진리를 말하고 있다. 지금 당신이 마음의 키를 잃었다면 이 책을 돛대 삼고 삿대 삼아 인생의 뱃길을 노저어가기 바란다. 어떤 특정한 상황에서 만난 한 줄의 글이 인생을 바꿀 수도 있다;
<br>					
<br>				
<br>				
<br>			
<br>			
<br>		
<br>	
<br>	
<br>	
<br>
<br>
<br>
<br>
<br>							
<br>						
<br>						
													<br>
													
													
													
												</div></div>
											</div>
											<div id="bookDescBtn" class="pr20"><a id="bookDesc" href="javascript:descOnOff('openBookDesc');"><span class="link_more">펼쳐보기</span></a></div>
										
										
										
																		
								</div>
							<!--// 책소개 -->
							
							<!-- 저자/역자 소개 -->
							
								<div class="row_item">
									<div class="title_zone"><h3 class="txt_title">저자 소개</h3></div>									
									<div class="box_contents">
										<div class="group_profile">
												<span class="author_name">린다피콘</span>
												<p class="txt_profile_marge">
													
													(Linda Picone) <br>학술 잡지, 아동서, 의학 관련 잡지, 도시 계획 등 다양한 글의 저자이자 편집자이다. 저서로 &lt;삶의 즐거움을 찾아라&gt;, &lt;삶의 지혜를 일깨워주는 격언&gt;, &lt;미국 식민 시대의 음식과 음료&gt;, &lt;건강한 성생활을 위한 간단한 지침서&gt; 등이 있다.<br>
													
													
												</p>
										</div>
									</div>	
								</div>
								
								<div class="row_item">
									<div class="title_zone"><h3 class="txt_title">역자 소개</h3></div>									
									<div class="box_contents">
										<div class="group_profile">
												<span class="author_name">유미성</span>
												<p class="txt_profile_marge">
													
													서울대학교 의류학과를 졸업하고 외교학을 부전공하였다. 현재 번역 에이전시 엔터스코리아에서 출판기획 및 전문번역가로 활동하고 있다. 옮긴 책으로는 『위대한 결정의 기술』, 『현대 사회의 인권』, 『영시 산책』 이 있다.<br>
													
													
												</p>
										</div>
									</div>	
								</div>
								
							<!-- //저자/역자 소개 -->
							
							<!-- 책 속에서 -->
							<div class="row_item">
								<div class="title_zone">
									<h3 class="txt_title">책 속에서</h3>
								</div>
								<div class="box_contents">
										<div class="group_txt">1월5일 <br>
다른 사람들을 행복하게 만들자 <br>
"행복이란 자신의 몸에 몇 방울 떨어뜨려 주면 다른 사람들이 기분 좋게 느낄 수 있는 향수와 같다." <br>
-랠프 윌도 에머슨 <br>
자원 봉사를 하거나 입원한 친구에게 꽃을 안겨 주는 것, 쇼핑하러 나갔다가 사랑하는 이에게 줄 특별한 선물을 사는 이유는 그렇게 하면 바로 우리 자신이 행복해지기 때문이다. 다른 사람들을 배려하고 호의를 베풀고서 도움을 받은 사람들보다 더 많은 것들을 얻기도 한다. <br>
심지어 마음속 깊은 곳에서 우러나와 그런 선행을 한 것이 아니라 어쩔 수 없이, 또는 의무적으로 했을지라도 도움을 준 사람과 받은 사람 모두 기쁨을 누린다. <br>
<br>
"오늘은 어떤 일을 해서 다른 사람들을 기쁘게 해줄까? 꼭 거창하거나 엄청난 일이 아니어도 되는데. 우리의 우정에 대해 내가 얼마나 감사하는지, 친구에게 간단하게 쪽지를 써서 주는 것도 좋겠지!"--- 본문 중에서<br></div>
								</div>
							</div>
							<!-- //책 속에서 -->
							
							
							
							<!-- 목차 -->
								<div id="cutIndexDesc" class="row_item">
									<div class="title_zone">
										<h3 class="txt_title">
											목차
										</h3>
									</div>
									<div class="box_contents">
										<div class="group_txt">
											
											<br><br>	<br>		목차<br>		위로<br>	<br>	<br><div id="openIndexDesc" style="display:none">	<br>	01 01 소소한 일에 초연해지자<br>02 01 생각과 영성<br>03 01 적극적인 태도를 유지하라!<br>04 01 비전을 가져라,그러면 인생을 바꿀 수 있을 것이다<br>05 01 행복이 들어올 수 있도록 마음을 열어라<br>06 01 자신의 가치를 떨어뜨리지 말라!<br>07 01 경험<br>08 01 정면으로 부딪쳐라<br>09 01 새로운 가능성<br>10 01 용기와 경청하기<br>11 01 직관의 황무지<br>12 01 집에서 즐길 수 있는 시기<br>	<br><br>
											
											
										</div>										
									</div>
									<div id="indexDescBtn" class="pr20"><a id="indexDesc" href="javascript:descOnOff('openIndexDesc');"><span class="link_more">펼쳐보기</span></a></div>
								</div></div>
							<!--// 목차 -->
							
							<!-- 상품고시정보 -->
							
							
							<div class="tap_zone mt40" id="sub02">
								<ul>
								<li><a href="#sub01">상품 정보</a></li>
								<li class="on"><a href="#sub02">회원리뷰</a></li>
								<li><a href="#sub03">반품/교환</a></li>
								<li><a class="alt"></a></li> <!-- 마지막 기본틀 -->
								</ul>
							</div>							
							<div class="row_item"><img src="http://image.bandinlunis.com/upload/design/bn/2017/01/bandipoint_info.jpg" usemap="#bandipoint_info"></div>
							<map name="bandipoint_info">
							    <area shape="rect" coords="772,121,948,159" href="/pages/front/service/serviceBandiPointInfo.jsp" target="_blank" alt="">							
							</map>					
							<!-- 리뷰 --> 
							<div class="row_item" style="margin-top:5px">
								<a href="javascript:popLayer('reviewInfo')" class="btn_w_comm btype_a2 hand mt3" style="position:absolute;right:0;top:20px">리뷰 혜택 및 이용안내</a>
								<div class="bookViewPop" id="reviewInfo" style="visibility:hidden; right:10px; top:0; width:450px">
						          <h3 class="mLine">리뷰 혜택 및 이용안내</h3>
						          <div class="laypopCon mt15">
						              <h4>리뷰 작성 시 혜택</h4>
						              <table cellpadding="0" cellspacing="0" class="storeNum card_info">
						              	<colgroup><col width="220"><col width="220"></colgroup>
										<tbody><tr>
						              		<th>구매상품 일반리뷰(150자 이상)</th>
						              		<td>반딧불 300개 적립</td>
						              	</tr> 
						              	<tr>
						              		<th>구매상품 우수리뷰(300자 이상)</th>
						              		<td>반딧불 600개 적립</td>
						              	</tr> 
						              	<tr>
						              		<th>포토 추가(GIFT, 뷰티만 해당)</th>
						              		<td>반딧불 100개 적립</td>
						              	</tr> 
						              </tbody></table>
						              <div class="al_center mt10"><a href="/pages/front/service/serviceBandiPointInfo.jsp#bandipoint04" class="btn_bu_comm btype_a2 hand mt3" target="_parent">리뷰 혜택 안내 및 주의 사항 보기</a></div> 
										<h4 class="mt20">반딧불이란?</h4>
										<div class="t_11gr mt5" style="line-height:140%">반디앤루니스에서 메일 구독, 간단평/서평 작성, 공감하기 등 책과 관련된 컨텐츠 활동을 하는 모든 회원님께 드리는 특별 포인트 입니다. 반딧불은 10개부터 적립금으로 환전하여 현금처럼 사용할 수 있습니다.</div>
						              	<div class="al_center mt10"><a href="/front/bookPeople/bandiEffect.do" class="btn_gy_comm btype_a2 hand mt3" target="_parent">반딧불 환전하기</a></div>
						          </div>						             
						          <p class="btnClose"><img src="http://image.bandinlunis.com/images/common/btn_close02.gif" alt="close" style="cursor:pointer;" onclick="javascript:popHidden('reviewInfo')"></p>
						      </div>
								<!-- iframe src="/global/iframe_review.html" height="370" class="iframe_review" frameborder="0" scrolling="no"></iframe-->
								<iframe id="blogReview" src="http://blog.bandinlunis.com/bandi_blog/extention/prodListTop.do?prod_id=2893258" width="100%" height="590" class="iframe_review" frameborder="0" scrolling="no"></iframe>
							</div> 
							<!-- //리뷰 -->
							
							<!-- 간단평 -->
							<iframe id="simpleReview" src="/front/product/iframeSimpleReview.do?prodId=2893258" width="100%" class="iframe_review" style="margin-left:0" frameborder="0" scrolling="no" height="571"></iframe>
							<!-- //간단평 -->
							
							<!-- 태그 -->
							<iframe id="iframe_tag" src="/front/product/listProdTag.do?prodId=2893258" width="100%" frameborder="0" scrolling="no" height="284"></iframe>
							<!-- //태그 -->
							
							<!-- 페이퍼--> 
							<div style="display:none"><iframe id="blogPaper" src="http://blog.bandinlunis.com/bandi_blog/extention/prodListTopPaper.do?prod_id=2893258" height="0" class="iframe_review" frameborder="0" scrolling="no"></iframe></div>
							 <!--//페이퍼 -->
							
							<!-- 고객이 테마북을 통해 같이 묶은 다른 상품  -->
							<div id="DTL_THEMA" class="bookInfo_subCon" style="display:none;"></div>
							
							<!-- 이 책이 속한 테마 -->
							<iframe id="iframe_theme" src="/front/product/listProdThema.do?prodId=2893258" width="100%" frameborder="0" scrolling="no" height="281"></iframe>
							<!-- //이 책이 속한 테마 -->
							
							<!-- 묶음상품리스트 -->
							<iframe src="/front/product/iframePackageList.do?prodId=2893258" id="iframePackageList" width="100%" class="iframe_package" frameborder="0" scrolling="no" height="421"></iframe>
							
							<!-- 연관상품 -->
							<iframe src="/front/product/iframeConnectProd.do?prodId=2893258" id="iframeConnectList" width="100%" class="iframe_package" frameborder="0" scrolling="no" height="10"></iframe>

							<div class="tap_zone mt40" id="sub03">
								<ul>
								<li><a href="#sub01">상품 정보</a></li>
								<li><a href="#sub02">회원리뷰</a></li>
								<li class="on"><a href="#sub03">반품/교환</a></li>
								<li><a class="alt"></a></li> <!-- 마지막 기본틀 -->
								</ul>
							</div>
							
							<!-- 반품/교환 -->
							<div class="row_item">
								<div class="title_zone">
									<h3 class="txt_title">반품/교환</h3>
								</div>
								<div class="box_contents">
									<p>상품 설명에 반품/ 교환 관련한 안내가 있는 경우 그 내용을 우선으로 합니다. (업체 사정에 따라 달라질 수 있습니다)</p>
									<dl class="information">
									<dt><h4>반품/교환</h4></dt>
									<dd>
										<table cellspacing="0" border="0" summary="본 상품은 배송 없이 구매 후 바로 다운받아 보는 eBook으로 다운 후에는 취소/환불이 불가능합니다." class="table_return">
										<caption>반품/교환</caption>
										<colgroup>
										<col width="18%"><col width="82%">
										</colgroup>
										<tbody> 
										<tr>
										<th>반품/교환 방법</th>
										<td>홈 &gt; 고객센터 &gt; 자주찾는질문 “반품/교환/환불” 안내 참고 또는 1:1상담게시판</td>
										</tr>
										<tr>
										<th>반품/교환 가능 기간</th>
										<td>반품,교환은 배송완료 후 7일 이내, 상품의 결함 및 계약내용과 다를 경우 문제발견 후 30일 이내에 신청가능</td>
										</tr>
										<tr>
										<th>반품/교환 비용</th>
										<td>변심 혹은 구매착오의 경우에만 반송료 고객 부담(별도 지정 택배사 없음)</td>
										</tr>
										<tr>
										<th>반품/교환 불가 사유</th>
										<td>
											<ul>
											<li>소비자의 책임 사유로 상품 등이 손실 또는 훼손된 경우</li>
											<li>소비자의 사용, 포장 개봉에 의해 상품 등의 가치가 현저히 감소한 경우 : 예) 화장품, 식품, 가전제품 등</li>
											<li>복제가 가능한 상품 등의 포장을 훼손한 경우 : 예) 음반/DVD/비디오, 소프트웨어, 만화책, 잡지, 영상 화보집</li>
											<li>소비자의 요청에 따라 개별적으로 주문 제작되는 상품의 경우 (GIFT주문제작상품)</li>
											<li>디지털 컨텐츠인 eBook, 오디오북 등을 1회 이상 다운로드를 받았을 경우</li>
											<li>시간의 경과에 의해 재판매가 곤란한 정도로 가치가 현저히 감소한 경우</li>
											<li>전자상거래 등에서의 소비자보호에 관한 법률이 정하는 소비자 청약철회 제한 내용에 해당되는 경우</li>
											<li>해외주문 상품(도서 및 음반)의 경우(파본/훼손/오발송 상품을 제외)</li>
											<li>중고 상품 등 재고의 추가 확보가 어려운 경우 (교환은 어려우나 반품은 가능)</li>
											<li>그밖에 월간지, 화보집, 사진집, 그림도감, 시집류, 중고학습서, 카세트테입, 만화, 입시자료, 악보, 지도, 여성실용서적 등(파본/훼손/오발송 상품을 제외)
											</li></ul>
										</td>
										</tr>
										<tr>
										<th>소비자 피해보상<br>환불지연에 따른 배상</th>
										<td>
											<ul>
											<li>상품의 불량에 의한 반품, 교환, A/S, 환불, 품질보증 및 피해보상 등에 관한 사항은 소비자 분쟁해결기준 (공정거래위원회고시)에 준하여 처리됨</li>
											<li>대금 환불 및 환불지연에 따른 배상금 지급 조건, 절차 등은 전자상거래 등에서의 소비자 보호에 관한 법률에 따라 처리함</li>
											</ul>
										</td>
										</tr>
										</tbody> 
										</table>
									</dd>
									</dl>
								</div>
							</div>
							<!--// 반품/교환 -->
						</div>

            
	
	</div>
</body>
</html>