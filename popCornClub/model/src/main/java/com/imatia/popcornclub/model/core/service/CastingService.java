package com.imatia.popcornclub.model.core.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.imatia.popcornclub.api.core.service.ICastingService;
import com.imatia.popcornclub.model.core.dao.CastingDao;
import com.ontimize.db.EntityResult;
import com.imatia.popcornclub.model.core.dao.CastingDao;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;

@Service("CastingService")
@Lazy
public class CastingService implements ICastingService{

 @Autowired private CastingDao castingDao;
 @Autowired private DefaultOntimizeDaoHelper daoHelper;
 
 @Override
 public EntityResult castingQuery(Map<String, Object> keyMap, List<String> attrList)
   throws OntimizeJEERuntimeException {
  return this.daoHelper.query(this.castingDao, keyMap, attrList);
 }

 @Override
 public EntityResult castingInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
  return this.daoHelper.insert(this.castingDao, attrMap);
 }

 @Override
 public EntityResult castingUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap)
   throws OntimizeJEERuntimeException {
  return this.daoHelper.update(this.castingDao, attrMap, keyMap);
 }

 @Override
 public EntityResult castingDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
  return this.daoHelper.delete(this.castingDao, keyMap);
 }

}