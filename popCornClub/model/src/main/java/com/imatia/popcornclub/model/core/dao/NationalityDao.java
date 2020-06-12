package com.imatia.popcornclub.model.core.dao;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;

@Repository("CandidateDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/NationalityDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class NationalityDao extends OntimizeJdbcDaoSupport {

 public static final String ATTR_ID_NATIONALITY = "id_nationality";
 public static final String ATTR_NATIONALITY_NAME = "nationality_name";


}