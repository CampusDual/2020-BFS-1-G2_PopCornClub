package com.imatia.popcornclub.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.stereotype.Repository;

@Repository("FavoriteGenreHasUser")
@ConfigurationFile(configurationFile = "dao/FavoriteGenreHasUser.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class FavoriteGenreHasUserDao extends OntimizeJdbcDaoSupport {

    public static final String ATTR_ID_FAVORITE_HAS_USER = "id_favorite_has_user";
    public static final String ATTR_ID_GENRE =  "id_genre";
    public static final String ATTR_ID_USER =  "id_user";

}
