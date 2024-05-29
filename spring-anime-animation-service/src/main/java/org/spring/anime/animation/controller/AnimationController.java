package org.spring.anime.animation.controller;

import org.spring.anime.animation.model.Animation;
import org.spring.anime.animation.service.AnimationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/anime")
public class AnimationController {

    @Autowired
    private AnimationService animeService;

    @GetMapping("/classic")
    public List<Animation> getClassic() {
        return animeService.getClassic();
    }

    @GetMapping("/new")
    public List<Animation> getNew() {
        return animeService.getNew();
    }

    @GetMapping("/cur")
    public List<Animation> getCur() {
        return animeService.getCur();
    }

    @GetMapping("/{id}")
    public Animation getAnimeById(@PathVariable Integer id) {
        return animeService.getAnimeById(id);
    }
}
