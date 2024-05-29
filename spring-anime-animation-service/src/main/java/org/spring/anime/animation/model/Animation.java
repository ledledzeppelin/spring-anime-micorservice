package org.spring.anime.animation.model;

import lombok.Data;

import java.util.List;

@Data
public class Animation {

    private Long id;
    private String name;
    private List<String> tags;
    private Integer longReviewSize;
    private Integer shortReviewSize;
    private String state;
    private String years;
    private Integer quarter;
    private Double rate;
    private Integer views;
    private List<Integer> commentId;
    private String introduction;
    private String image;
}
