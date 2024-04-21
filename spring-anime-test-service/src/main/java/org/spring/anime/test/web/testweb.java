package org.spring.anime.test.web;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/test")
@RestController

public class testweb {

    @GetMapping
    public String getVets() {
        // 这里可以是获取数据的逻辑，比如从数据库中获取数据
        return "Test Successfully"; // 返回获取的信息
    }
}
