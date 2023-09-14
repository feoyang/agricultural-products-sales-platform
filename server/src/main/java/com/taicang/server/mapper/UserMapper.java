package com.taicang.server.mapper;

import com.taicang.server.entity.User;
import org.apache.ibatis.annotations.*;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Mapper
public interface UserMapper {

    @Delete("")
    Integer deleteById(@Param("id") Integer id);
    User findByUsername(String user_name);

    User findByUserNameAndRole(String user_name, String role);

    void register(User user);

    void updateUserInfo(User user);

    void updatePassword(User user);
}
