package com.imatia.popcornclub.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository("NationalityHasMovie")
@Lazy
@ConfigurationFile(configurationFile = "dao/NationalityHasMovie.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class NationalityHasMovieDao extends OntimizeJdbcDaoSupport {

    public static final String ATTR_ID_NATIONALITY_HAS_MOVIE = "id_nationality_has_movie";
    public static final String ATTR_ID_GENRE = "id_nationality";
    public static final String ATTR_ID_MOVIE = "id_movie";
}
