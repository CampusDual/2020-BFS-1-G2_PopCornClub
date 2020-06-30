package com.imatia.popcornclub.model.core.dao;


import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.stereotype.Repository;

@Repository("CastingHasMovieDao")
@ConfigurationFile(configurationFile = "dao/CastingHasMovieDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class CastingHasMovieDao extends OntimizeJdbcDaoSupport {
    public static final String ATTR_ID_CASTING_HAS_MOVIE = "id_casting_has_movie";
    public static final String ATTR_ID_CASTING = "id_casting";
    public static final String ATTR_ID_MOVIE = "id_movie";
}
