package com.imatia.popcornclub.api.core.service;

import java.util.List;
import java.util.Map;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

public interface IRatingService {

 // RATING
 public EntityResult ratingQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
 public EntityResult ratingInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
 public EntityResult ratingUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
 public EntityResult ratingDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

}