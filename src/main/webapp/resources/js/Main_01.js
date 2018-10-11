/**
 * 
 */


/*************************************
* // event의 flash 표시, path가 이미지와 swf를 분리해서 자동으로 뿌려줌.
*************************************/ 

function showImgSwf(path) {
    exp = path.substring(path.lastIndexOf('.')+1,path.length);

    if(exp.toLowerCase() == 'swf') {            
        path = "\
            <object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' width='100%' height='100%' codebase='http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab'>\
                <param name='movie' value='" + path + "' />\
                <embed src='" + path + "' width='100%' height='100%' quality='high' type='application/x-shockwave-flash' pluginspage='http://www.adobe.com/go/getflashplayer' />\
            </object>\
        ";
    } else {
        path = "<img src='" + path + "'>";
    }
    document.write(path);
}

/*************************************
* 배너클릭시 관련 URL 이동 & 클릭로그 기록 
*
* url : 배너URL
* target  : 이동 URL target
* banSeq  : 배너SEQ
*************************************/
function goBannerUrl(url, target, banSeq)
{
    var frmObj  = jutil.e("bannerUrlClickLog");
    var memSeq  = sMemSeq;
        
    // form 생성
//  if(!frmObj)
//  {
        frmObj = document.createElement("FORM");
        frmObj.name = "bannerUrlClickLog";
        frmObj.id = "bannerUrlClickLog";
      
        document.body.appendChild(frmObj);
//  }
    if(memSeq == ""){
        memSeq = 0;
    }
    
    // 배너 클릭로그 등록
    if(banSeq != 'undefined' && banSeq != '')
    //ajaxRequest("createBannerClickLog", {"banSeq" : banSeq, "memSeq" : memSeq},
    //	function(banner){
			//배너로그분석(와이즈로그)
			n_click_logging(hostDomain+"/wiselog/bottonClick.aspx?button_id=" + banSeq);
    //	}
    //);
    //Banner.createBannerClickLog(banSeq, memSeq); 
  
    if (url != '')
    {
        frmObj.action = url;
        frmObj.method = "post";
        frmObj.target = target;
        frmObj.submit();
    }
}