package com.imatia.popcornclub.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository("CategoryDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/CategoryDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class CategoryDao extends OntimizeJdbcDaoSupport {

    public static final String ATTR_ID_CATEGORY = "id_category";
    public static final String ATTR_CATEGORY_NAME = "category_name";


}
