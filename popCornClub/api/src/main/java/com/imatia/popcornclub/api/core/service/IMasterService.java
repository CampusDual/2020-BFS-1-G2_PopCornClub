package com.imatia.popcornclub.api.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

import java.util.List;
import java.util.Map;

public interface IMasterService {

    //CATEGORY
    public EntityResult categoryQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult categoryInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult categoryUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult categoryDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

    //NATIONALITY
    public EntityResult nationalityQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult nationalityInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult nationalityUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult nationalityDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

}
