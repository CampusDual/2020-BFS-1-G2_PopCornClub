package com.imatia.popcornclub.model.core.service;

import com.imatia.popcornclub.api.core.service.IGenreService;
import com.imatia.popcornclub.model.core.dao.GenreDao;
import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("GenreService")
@Lazy
public class GenreService implements IGenreService {

    @Autowired private GenreDao genreDao;
    @Autowired private DefaultOntimizeDaoHelper daoHelper;

    @Override
    public EntityResult genreQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.genreDao, keyMap, attrList);
    }

    @Override
    public EntityResult genreInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.genreDao, attrMap);
    }

    @Override
    public EntityResult genreUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.genreDao, attrMap, keyMap);
    }

    @Override
    public EntityResult genreDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.genreDao, keyMap);
    }

    @Override
    public EntityResult genreMovieQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.genreDao, keyMap, attrList, "genreMovie");
    }

}
