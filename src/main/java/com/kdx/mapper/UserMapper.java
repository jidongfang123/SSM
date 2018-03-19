package com.kdx.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.kdx.pojo.Commodity;
import com.kdx.pojo.CommodityRequest;
import com.kdx.pojo.Girl;
import com.kdx.pojo.GirlRequset;
import com.kdx.pojo.MyAlbumRequest;
import com.kdx.pojo.MyAlbumResponse;
import com.kdx.pojo.User;
import com.kdx.pojo.UserRequest;

public interface UserMapper {
   @Select("select * from user")
	List<User> show_list(UserRequest userRequest);
   
   @Insert("insert into t_albums (t_name, t_path, t_user_name)"
			+ " values"
			+ " (#{myAlbumName}, #{myAlbumPath}, #{userName})")
	void insertMyFile(MyAlbumRequest myAlbumRequest);


   @Insert("insert into user (username, usersex)"
			+ " values"
			+ " (#{userName}, #{usersex})")
    void insertNews(UserRequest userRequest);

   @Delete("delete from user where userid = #{userid}")
   	void deleteNews(UserRequest userRequest);
  
   @Select("select * from user where userid = #{userid}")
    UserRequest update(User user);
   
   @Update("update user set username = #{userName}, usersex = #{usersex} where userid = #{userid} ")
    void updateeditNews(UserRequest userRequest);
   
   @Select("select * from Commodity")
    List<Commodity> testServlet(CommodityRequest commodityRequest);

   @Select("select * from girl")
   List<Girl> selectgirl(GirlRequset girlRequset);

	@Select("select t_path as \"image\""
			+ " from t_albums")
   List<MyAlbumResponse> selectMyAlbumList();
   
}
