package com.imatia.popcornclub.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.stereotype.Repository;

@Repository("FavoriteMovieHasUser")
@ConfigurationFile(configurationFile = "dao/FavoriteMovieHasUser.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class FavoriteMovieHasUserDao extends OntimizeJdbcDaoSupport {

    public static final String ATTR_ID_FAVORITE_GENRE_HAS_USER = "id_favorite_genre_has_user";
    public static final String ATTR_ID_MOVIE = "id_movie";
    public static final String ATTR_ID_USER = "id_user";
}
