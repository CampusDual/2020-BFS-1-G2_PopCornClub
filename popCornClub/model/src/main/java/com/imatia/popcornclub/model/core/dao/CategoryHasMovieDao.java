package com.imatia.popcornclub.model.core.dao;


import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.stereotype.Repository;

@Repository("CategoryHasMovieDao")
@ConfigurationFile(configurationFile = "dao/CategoryHasMovieDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")

public class CategoryHasMovieDao extends OntimizeJdbcDaoSupport {
    public static final String ATTR_ID_CATEGORY = "id_category";
    public static final String ATTR_ID_MOVIE = "id_movie";
}
