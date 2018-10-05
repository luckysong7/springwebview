package com.exe.springwebview;

import java.io.FileOutputStream;
import java.io.InputStream;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CustomViewController {

	@RequestMapping(value = "/simpleCustomView.action")
	public ModelAndView customView() {

		ModelAndView mav = new ModelAndView();
//		mav.setViewName("simpleCustomView");

//		Class 파일로 데이터를 넘길수도 있음
		mav.setView(new SimpleCustomView());
		mav.addObject("message", "SimpleCustomView Class");

		return mav;

	}

	@RequestMapping(value = "/pdfView.action")
	public ModelAndView getPdfView() {

		ModelAndView mav = new ModelAndView();
		mav.setView(new CustomPdfView());
		mav.addObject("message", "PDF FILE");

		return mav;

	}

	@RequestMapping(value = "/excelView.action")
	public ModelAndView getExcelView() {

		ModelAndView mav = new ModelAndView();
		mav.setView(new CustomExcelView());
		mav.addObject("message", "Excel FILE");

		return mav;

	}

	@RequestMapping(value = "/upload.action", method = RequestMethod.POST)
	public String upload(MultipartHttpServletRequest request, String str) throws Exception {

		String path = request.getSession().getServletContext().getRealPath("/WEB-INF/files");

		MultipartFile file = request.getFile("upload");

		if (file != null && file.getSize() > 0) {

			try {

				FileOutputStream fos = new FileOutputStream(path + "/" + file.getOriginalFilename());

				InputStream is = file.getInputStream();

				byte[] buffer = new byte[512];

				while (true) {

					int data = is.read(buffer, 0, buffer.length);
					if (data == -1) {
						break;
					}
					fos.write(buffer, 0, data);

				}
				is.close();
				fos.close();

			} catch (Exception e) {
				// TODO: handle exception
			}

		}
		return "uploadResult";

	}
	
	@RequestMapping(value = "/download.action")
	public ModelAndView download() {
		ModelAndView mav = new ModelAndView();
		mav.setView(new DownloadView());
		
		return mav;
	}

	@RequestMapping(value="/test.action")
	public String test() {
		
		return "Test";
	}
	@RequestMapping(value="/test2.action")
	public String test2() {
		
		return "Test2";
	}
	
	@RequestMapping(value="/test3.action")
	public String test3() {
		
		return "Test3";
	}
	
}
