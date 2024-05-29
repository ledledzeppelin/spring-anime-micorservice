package org.spring.anime.user.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;





import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {

    private Long id;

    private String nickname;

    private String account;

    private String avatar;   //头像

    private String password;

    // List of Anime IDs the user is following
    private List<Long> followingAnimeIds;

    // List of Comment IDs the user has made
    private List<Long> commentIds;

    // List of Anime IDs the user has viewed in history
    private List<Long> historyAnimeIds;
}
