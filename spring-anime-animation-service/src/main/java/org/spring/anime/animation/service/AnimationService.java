package org.spring.anime.animation.service;

import org.spring.anime.animation.mapper.AnimationMapper;
import org.spring.anime.animation.model.Animation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AnimationService {

    @Autowired
    private AnimationMapper animeMapper;

    public List<Animation> getClassic(){
        return animeMapper.getClassic();
    }

    public List<Animation> getNew() {
        return animeMapper.getNew();
    }

    public List<Animation> getCur() {
        return animeMapper.getCur();
    }

    public Animation getAnimeById(Integer id) {
        return animeMapper.getAnimeById(id);
    }
}
