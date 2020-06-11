package com.imatia.popcornclub.api.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

import java.util.List;
import java.util.Map;

public interface IMovieService {

    //SERVICE
    public EntityResult movieQuery(Map<String, Object> keyMap, List<String> attrList)throws OntimizeJEERuntimeException;
    public EntityResult movieInsert(Map<String, Object> attrMap)throws OntimizeJEERuntimeException;
    public EntityResult movieUpdate(Map<String, Object> attrMap, Map<String, Object>keyMap)throws OntimizeJEERuntimeException;
    public EntityResult movieDelete(Map<String, Object> keyMap)throws OntimizeJEERuntimeException;
}