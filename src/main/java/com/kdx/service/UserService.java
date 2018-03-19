package com.kdx.service;

import java.util.List;
import java.util.Map;

import com.kdx.pojo.Commodity;
import com.kdx.pojo.CommodityRequest;
import com.kdx.pojo.Girl;
import com.kdx.pojo.GirlRequset;
import com.kdx.pojo.MyAlbumRequest;
import com.kdx.pojo.MyAlbumResponse;
import com.kdx.pojo.User;
import com.kdx.pojo.UserRequest;

public interface UserService {

	List<User> show_list(UserRequest userRequest);

	void insertNews(UserRequest userRequest);

	void deleteNews(UserRequest userRequest);

	UserRequest update(User user);

	void updateeditNews(UserRequest userRequest);

	List<Commodity> testServlet(CommodityRequest commodityRequest);

	List<Girl> selectgirl(GirlRequset girlRequset);

	void insertMyFile(MyAlbumRequest myAlbumRequest);

	List<MyAlbumResponse> selectMyAlbumList();

	
}
