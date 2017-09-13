package com.stx.spring.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.stx.spring.iservice.imyservice;
import com.stx.spring.model.hk_cuisine;

@Controller
public class FileuploadController {
	@Resource
	private imyservice im;
@RequestMapping("upload.do")
public String uploadfile(@RequestParam("file1") MultipartFile file1,HttpServletRequest request,hk_cuisine hc) throws Exception, IOException{
	String filepath=request.getServletContext().getRealPath("/");
//	System.out.println(filepath);
	file1.transferTo(new File(filepath+"upload/"+file1.getOriginalFilename()));
    
	//System.out.println("upload/"+file1.getOriginalFilename());
System.out.println(file1.getOriginalFilename());
//String file=new String(file1.getOriginalFilename().getBytes("ISO-8859-1"),"UTF-8");	
String path="upload/"+file1.getOriginalFilename()+"";
  
hc.setPath(path);

 
System.out.println(hc.getPath());
    im.cuisine(hc);
   // hc.setPath(new String(hc.getPath().getBytes("ISO-8859-1"),"UTF-8"));
List list = new ArrayList();
list.add(hc);
System.out.println(list.size());
    request.setAttribute("a", list);
return "success";
	
}
}
