package org.spring.anime.review.service;

import org.spring.anime.review.mapper.ReviewMapper;
import org.spring.anime.review.model.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewService {

    @Autowired
    private ReviewMapper reviewMapper;

    public List<Review> getReviewsByAnimationId(int animationId) {
        return reviewMapper.getReviewsByAnimationId(animationId);
    }

    public void addReview(Review review) {
        reviewMapper.addReview(review);
    }
}

