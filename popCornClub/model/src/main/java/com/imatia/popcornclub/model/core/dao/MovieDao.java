package com.imatia.popcornclub.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository("MovieDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/MovieDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class MovieDao extends OntimizeJdbcDaoSupport{

    public static final String ATTR_ID_MOVIE = "id_movie";
    public static final String ATTR_MOVIE_NAME = "movie_name";
    public static final String ATTR_DURATION = "duration";
    public static final String ATTR_CRITIC = "critic";
    public static final String ATTR_DESCRIPTION = "description";
    public static final String ATTR_POSTER = "poster";
    public static final String ATTR_PREMIERE = "premiere";
    public static final String ATTR_TRAILER = "trailer";
    public static final String ATTR_MOVIE_YEAR = "movie_year";
    public static final String ATTR_MEDIA_RATING = "media_rating";
    public static final String ATTR_NATIONALITY_NAME = "nationality_name";
}
