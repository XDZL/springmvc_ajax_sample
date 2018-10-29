package com.dj.web.mapper;

import com.dj.web.model.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

@Component
public interface UserMapper {
    @Select("select * from message where id = #{id}")
    public User getUserUsingId(@Param("id") int id);

    @Select("select * from message where command = #{command}")
    public User getUserUsingCommand(@Param("command") String command);

    @Insert("insert into message (command,description,content) values(#{command},#{description},#{content})")
    @Options(useGeneratedKeys = true)
    public void insertUser(User user);
}
