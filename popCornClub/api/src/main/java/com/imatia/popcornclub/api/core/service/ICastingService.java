package com.imatia.popcornclub.api.core.service;

import java.util.List;
import java.util.Map;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

public interface ICastingService {

 // CASTING
 public EntityResult castingQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
 public EntityResult castingInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
 public EntityResult castingUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
 public EntityResult castingDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

}