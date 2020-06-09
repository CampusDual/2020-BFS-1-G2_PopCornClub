package com.imatia.popcornclub.model.core.service;

import com.imatia.popcornclub.api.core.service.IMasterService;
import com.imatia.popcornclub.model.core.dao.CategoryDao;
import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service("MasterService")
@Lazy
public class MasterService implements IMasterService {

    @Autowired private CategoryDao categoryDao;
    @Autowired private DefaultOntimizeDaoHelper daoHelper;


    @Override
    public EntityResult categoryQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.categoryDao, keyMap, attrList);
    }

    @Override
    public EntityResult categoryInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.categoryDao, attrMap);
    }

    @Override
    public EntityResult categoryUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.categoryDao, attrMap, keyMap);
    }

    @Override
    public EntityResult categoryDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.categoryDao, keyMap);
    }

    @Override
    public EntityResult nationalityQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return null;
    }

    @Override
    public EntityResult nationalityInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return null;
    }

    @Override
    public EntityResult nationalityUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return null;
    }

    @Override
    public EntityResult nationalityDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return null;
    }
}
