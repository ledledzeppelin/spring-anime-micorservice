package org.spring.anime.user.service.impl;

import org.spring.anime.user.mapper.UserMapper;
import org.spring.anime.user.model.User;
import org.spring.anime.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User authenticate(String Account, String password) {
        User user = userMapper.findByAccount(Account);
        if (user == null) {
            throw new RuntimeException("用户名不存在");
        }
        if (!user.getPassword().equals(password)) {
            throw new RuntimeException("密码错误");
        }
        return user;
    }
}
