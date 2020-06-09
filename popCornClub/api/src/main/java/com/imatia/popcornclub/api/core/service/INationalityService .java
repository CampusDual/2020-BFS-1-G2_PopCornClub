package com.ontimize.hr.api.core.service;

import java.util.List;
import java.util.Map;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

public interface INationalityService {

 // CANDIDATE
 public EntityResult nationalityQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
 public EntityResult nationalityInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
 public EntityResult nationalityUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
 public EntityResult nationalityDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

}