package com.imatia.popcornclub.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository("GenreHasMovie")
@Lazy
@ConfigurationFile(configurationFile = "dao/GenreHasMovie.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class GenreHasMovieDao extends OntimizeJdbcDaoSupport {

    public static final String ATTR_ID_GENRE_HAS_MOVIE = "id_genre_has_movie";
    public static final String ATTR_ID_GENRE = "id_genre";
    public static final String ATTR_ID_MOVIE = "id_movie";

}
