package com.imatia.popcornclub.api.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

import java.util.List;
import java.util.Map;

public interface IGenreService {

    //SERVICE
    public EntityResult genresQuery(Map<String, Object> keyMap, List<String> attrList)throws OntimizeJEERuntimeException;
    public EntityResult genresInsert(Map<String, Object> attrMap)throws OntimizeJEERuntimeException;
    public EntityResult genresUpdate(Map<String, Object> attrMap, Map<String, Object>keyMap)throws OntimizeJEERuntimeException;
    public EntityResult genresDelete(Map<String, Object> keyMap)throws OntimizeJEERuntimeException;



}
