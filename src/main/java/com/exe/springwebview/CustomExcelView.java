package com.exe.springwebview;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.view.document.AbstractJExcelView;

import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

@Controller
public class CustomExcelView extends AbstractJExcelView{

	@Override
	protected void buildExcelDocument(Map<String, Object> model, WritableWorkbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		response.addHeader("Content-Disposition", "Attatchment;FileName=sales.xls");
		
		WritableSheet sheet = workbook.createSheet("ÆÇ¸Åº¸°í¼­", 0); // ¾×¼¿ÆÄÀÏ
		
		sheet.addCell(new Label(0,0,"³âµµ")); // ¼¿ÀÇ ÁÂÇ¥ 
		sheet.addCell(new Label(1,0,"ÆÇ¸Å·®")); // ¼¿ÀÇ ÁÂÇ¥ 
		
		for(int i = 2001 ; i < 2018 ; i++ ) {
			
			sheet.addCell(new Label(0,i-2000,String.format("%d", i)));
			sheet.addCell(new Label(1,i-2000,String.format("%d", (int)((Math.random()+1)*90000))));
			
			
		}
		
		
		
	}

	
	
	
}
