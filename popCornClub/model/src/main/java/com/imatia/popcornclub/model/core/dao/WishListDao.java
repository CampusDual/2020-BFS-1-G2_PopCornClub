package com.imatia.popcornclub.model.core.dao;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;

@Repository("WishListDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/WishList.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class WishListDao extends OntimizeJdbcDaoSupport{

    public static final String ATTR_ID_MOVIE = "id_movie";
    public static final String ATTR_ID_USER = "id_user";
    public static final String ATTR_ID_WISHLIST = "id_wishlist";
}
