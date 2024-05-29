package org.spring.anime.review.model;

import lombok.Data;

@Data
public class Review {
    private Long id;  // 主键
    private  Long animation_id;
    private int rating;
    private String user;
    private String comment;
    private int likes;
    private String date;
}