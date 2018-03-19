package com.kdx.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kdx.pojo.MyAlbumRequest;
import com.kdx.pojo.UserRequest;
import com.kdx.service.UserService;

@Controller
@RequestMapping("myalbum")
public class MyalbumController {
	
	@Autowired
	private UserService userService;
	
	/*@RequestMapping("uploadMyFile")
	@ResponseBody
	String uploadMyFile(MultipartFile file, HttpServletRequest request) {
		if (null != file) {
			//把文件写出到F:/album下
			File f = new File("F:/album");
			if (!f.exists()) {
				f.mkdirs();
			}
			//截取后缀
			String originalFilename = file.getOriginalFilename();
			String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));
			String newFileName = UUID.randomUUID().toString() + suffix;
			File f2 = new File("F:/album/" + newFileName);
			try {
				file.transferTo(f2);
				String userName = ((UserRequest) request.getSession().getAttribute("userInfo")).getUsername();
				MyAlbumRequest myAlbumRequest = new MyAlbumRequest();
				myAlbumRequest.setMyAlbumName(originalFilename);
				myAlbumRequest.setMyAlbumPath("/" + newFileName);
				myAlbumRequest.setUserName(userName);
				//把图片路径保存在数据库中
				userService.insertMyFile(myAlbumRequest);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "{}";
	}*/
}
