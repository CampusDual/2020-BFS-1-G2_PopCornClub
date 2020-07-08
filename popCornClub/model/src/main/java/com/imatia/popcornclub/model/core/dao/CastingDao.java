package com.imatia.popcornclub.model.core.dao;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;

@Repository("CastingDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/CastingDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class CastingDao extends OntimizeJdbcDaoSupport {

 public static final String ATTR_ID_CASTING = "id_casting";
 public static final String ATTR_CASTING_NAME = "casting_name";
 public static final String ATTR_CASTING_ROLE = "casting_role";


}