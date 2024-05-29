package org.spring.anime.animation.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.spring.anime.animation.model.Animation;

import java.util.List;

@Mapper
public interface AnimationMapper {

    List<Animation> getNew();

    List<Animation> getClassic();

    List<Animation> getCur();

    Animation getAnimeById( Integer id);
}
