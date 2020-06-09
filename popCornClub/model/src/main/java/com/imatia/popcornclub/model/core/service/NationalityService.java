package com.ontimize.hr.model.core.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.ontimize.db.EntityResult;
import com.ontimize.hr.api.core.service.ICandidateService;
import com.ontimize.hr.model.core.dao.CandidateDao;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;

@Service("NationalityService")
@Lazy
public class NationalityService implements INationalityService{

 @Autowired private NationalityDao nationalityDao;
 @Autowired private DefaultOntimizeDaoHelper daoHelper;
 
 @Override
 public EntityResult nationalityQuery(Map<String, Object> keyMap, List<String> attrList)
   throws OntimizeJEERuntimeException {
  return this.daoHelper.query(this.nationalityDao, keyMap, attrList);
 }

 @Override
 public EntityResult nationalityInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
  return this.daoHelper.insert(this.nationalityDao, attrMap);
 }

 @Override
 public EntityResult nationalityUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap)
   throws OntimizeJEERuntimeException {
  return this.daoHelper.update(this.nationalityDao, attrMap, keyMap);
 }

 @Override
 public EntityResult nationalityDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
  return this.daoHelper.delete(this.nationalityDao, keyMap);
 }

}