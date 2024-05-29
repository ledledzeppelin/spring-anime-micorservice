package org.spring.anime.user.mapper;



import org.apache.ibatis.annotations.Mapper;

import org.spring.anime.user.model.User;

@Mapper
public interface UserMapper {

    // 根据用户名查询用户

    User findByAccount(String account);
}
