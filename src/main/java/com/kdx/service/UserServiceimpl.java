package com.kdx.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kdx.mapper.UserMapper;
import com.kdx.pojo.Commodity;
import com.kdx.pojo.CommodityRequest;
import com.kdx.pojo.Girl;
import com.kdx.pojo.GirlRequset;
import com.kdx.pojo.MyAlbumRequest;
import com.kdx.pojo.MyAlbumResponse;
import com.kdx.pojo.User;
import com.kdx.pojo.UserRequest;

@Service
public class UserServiceimpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	//查询
	@Override
	public List<User> show_list(UserRequest userRequest) {
		
		return userMapper.show_list(userRequest);
	}
	
	//新增
	@Override
	public void insertNews(UserRequest userRequest) {
		userMapper.insertNews(userRequest);
	}
	
	//删除
	@Override
	public void deleteNews(UserRequest userRequest) {
		userMapper.deleteNews(userRequest);
	}
	
	//修改回显
	@Override
	public UserRequest update(User user) {
		UserRequest userRequest = userMapper.update(user);
		return userRequest;
	}
	
	//修改
	@Override
	public void updateeditNews(UserRequest userRequest) {
		userMapper.updateeditNews(userRequest);
	}

	@Override
	public List<Commodity> testServlet(CommodityRequest commodityRequest) {
	 return	userMapper.testServlet(commodityRequest);
	}

	@Override
	public List<Girl> selectgirl(GirlRequset girlRequset) {
		return userMapper.selectgirl(girlRequset);
	}

	@Override
	public void insertMyFile(MyAlbumRequest myAlbumRequest) {
		userMapper.insertMyFile(myAlbumRequest);
	}

	@Override
	public List<MyAlbumResponse> selectMyAlbumList() {
		return userMapper.selectMyAlbumList();
	}


}
