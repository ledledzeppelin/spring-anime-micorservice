package org.spring.anime.review.controller;

import org.spring.anime.review.model.Review;
import org.spring.anime.review.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/reviews")
public class ReviewController {

    @Autowired
    private ReviewService reviewService;

    @GetMapping("/animation/{animationId}")
    public List<Review> getReviewsByAnimationId(@PathVariable int animationId) {
        return reviewService.getReviewsByAnimationId(animationId);
    }

    @PostMapping
    public void addReview(@RequestBody Review review) {
        reviewService.addReview(review);
    }
}

