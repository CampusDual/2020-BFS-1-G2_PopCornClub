package com.imatia.popcornclub.model.core.dao;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;

@Repository("RatingDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/RatingDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class RatingDao extends OntimizeJdbcDaoSupport {

 public static final String ATTR_ID_USER = "id_user";
 public static final String ATTR_ID_MOVIE = "id_movie";
 public static final String ATTR_RATING_VALUE = "rating_value";


}