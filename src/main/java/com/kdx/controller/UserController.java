package com.kdx.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.baidu.aip.face.AipFace;
import com.kdx.pojo.Commodity;
import com.kdx.pojo.CommodityRequest;
import com.kdx.pojo.Girl;
import com.kdx.pojo.GirlRequset;
import com.kdx.pojo.MyAlbumRequest;
import com.kdx.pojo.MyAlbumResponse;
import com.kdx.pojo.User;
import com.kdx.pojo.UserRequest;
import com.kdx.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	private User user;
	
	//查询数据呵呵
	@RequestMapping(value = "show_list" , method = { RequestMethod.POST })
	@ResponseBody
	List<User> show_list(Model model,UserRequest userRequest){
		
      return  userService.show_list(userRequest);

    }
    
    @RequestMapping(value = "insert")
    String insert(){
    	return "insert";
    }
    
	
	@RequestMapping(value = "insertNews" ,method = RequestMethod.POST)
	@ResponseBody
	String insertNews(UserRequest userRequest){
		userService.insertNews(userRequest);
		return "{}";
	}
	
	@RequestMapping(value = "deleteNews" , method = { RequestMethod.DELETE })
	@ResponseBody
	String deleteNews(UserRequest userRequest){
		userService.deleteNews(userRequest);
		return "{}";
	}
	@RequestMapping(value = "update" ,method = { RequestMethod.GET })
	String update(Model model,User user){
		UserRequest userRequest = userService.update(user);
		model.addAttribute("user",userRequest);
		return "editList";
	}
	@RequestMapping(value = "updateeditNews" ,method = { RequestMethod.POST })
	@ResponseBody
	String updateeditNews(UserRequest userRequest){
		userService.updateeditNews(userRequest);
		System.out.println();
		return  "{}";
	}
	
	@RequestMapping(value ="testServlet")
	@ResponseBody
	List<Commodity> testServlet(CommodityRequest commodityRequest){
		
		return userService.testServlet(commodityRequest);
	}
	
	@RequestMapping(value = "selectgirl")
	@ResponseBody
	List<Girl> selectgirl(GirlRequset girlRequset){
		return userService.selectgirl(girlRequset);
		
	}
	
	@RequestMapping(value = "openwidows")
	String openwidows(){
		
		return "imglist";
	}
	
	@RequestMapping(value = "img")
	String img(){
		
		return "img";
	}
	
	@RequestMapping("uploadMyFile")
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
				String userName = newFileName;
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
	}
	
	@RequestMapping("selectMyAlbumList")
	@ResponseBody
	Map<String, Object> selectMyAlbumList() {
		Map<String, Object> map = new HashMap<>();
		List<MyAlbumResponse> list = userService.selectMyAlbumList();
		map.put("total", 10);
		map.put("result", list);
		return map;
	}
	
	@RequestMapping(value ="image")
	public void sample(AipFace client) {
	    // 传入可选参数调用接口
	    HashMap<String, String> options = new HashMap<String, String>();
	    options.put("max_face_num", "2");
	    options.put("face_fields", "age");
	    
	    
	    // 参数为本地图片路径
	    String image = "test.jpg";
	    JSONObject res = client.detect(image, options);
	    System.out.println(res.toString(2));

	    // 参数为本地图片二进制数组
	    byte[] file = readImageFile(image);
	    res = client.detect(file, options);
	    System.out.println(res.toString(2));

	}

	private byte[] readImageFile(String image) {
		return null;
	}
		
	  @RequestMapping("fileUpload2")
	  @ResponseBody
	    public String  fileUpload2(@RequestParam("file") CommonsMultipartFile file) throws IOException {
	         long  startTime=System.currentTimeMillis();
	        System.out.println("fileName："+file.getOriginalFilename());
	        String path="E:/"+new Date().getTime()+file.getOriginalFilename();
	         
	        File newFile=new File(path);
	        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
	        file.transferTo(newFile);
	        long  endTime=System.currentTimeMillis();
	        System.out.println("方法二的运行时间："+String.valueOf(endTime-startTime)+"ms");
	        return "{}"; 
		 }
	}