package org.spring.anime.review.mapper;

import org.apache.ibatis.annotations.*;
import  org.spring.anime.review.model.Review;

import java.util.List;

@Mapper
public interface ReviewMapper {


    List<Review> getReviewsByAnimationId(int animationId);

    void addReview(Review review);
}
