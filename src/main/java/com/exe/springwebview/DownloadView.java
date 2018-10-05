package com.exe.springwebview;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.AbstractView;

public class DownloadView extends AbstractView{

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		response.setContentType("application/octet-stream");
		
		response.addHeader("Content-disposition", "Attachment;Filename=\"suzi.jpg\"");
		
		String file = request.getSession().getServletContext().getRealPath("/WEB-INF/files/suzi.jpg");
		
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
		
		BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
		
		while(true) {
			int data = bis.read();
			
			if(data != -1) {
				bos.write(data);
			}else {
				break;
			}
			
			bis.close();
			bos.close();
		}
		
	}
}
