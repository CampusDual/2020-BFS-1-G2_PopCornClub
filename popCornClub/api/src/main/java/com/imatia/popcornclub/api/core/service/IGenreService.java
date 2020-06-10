package com.imatia.popcornclub.api.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

import java.util.List;
import java.util.Map;

public interface IGenreService {

    //SERVICE
    public EntityResult genreQuery(Map<String, Object> keyMap, List<String> attrList)throws OntimizeJEERuntimeException;
    public EntityResult genreInsert(Map<String, Object> attrMap)throws OntimizeJEERuntimeException;
    public EntityResult genreUpdate(Map<String, Object> attrMap, Map<String, Object>keyMap)throws OntimizeJEERuntimeException;
    public EntityResult genreDelete(Map<String, Object> keyMap)throws OntimizeJEERuntimeException;



}
