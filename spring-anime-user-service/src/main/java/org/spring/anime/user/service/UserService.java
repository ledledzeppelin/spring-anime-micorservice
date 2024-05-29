package org.spring.anime.user.service;

import org.spring.anime.user.model.User;

public interface UserService {
    User authenticate(String account, String password);
}
