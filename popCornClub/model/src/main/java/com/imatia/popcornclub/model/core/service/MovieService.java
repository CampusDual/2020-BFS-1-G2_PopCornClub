package com.imatia.popcornclub.model.core.service;

import com.imatia.popcornclub.api.core.service.IMovieService;
import com.imatia.popcornclub.model.core.dao.MovieDao;
import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("MovieService")

public class MovieService implements IMovieService{


    @Autowired private MovieDao movieDao;
    @Autowired private DefaultOntimizeDaoHelper daoHelper;
    
    public EntityResult movieQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.movieDao, keyMap, attrList);
    }

    @Override
    public EntityResult movieInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.movieDao, attrMap);
    }

    @Override
    public EntityResult movieUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.movieDao, attrMap, keyMap);
    }

    @Override
    public EntityResult movieDelete(Map<String, Object> keyMap)
    		throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.movieDao, keyMap);
    }

    @Override
    public EntityResult infoMoviesQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.movieDao, keyMap, attrList, "infoMovies");
    }
    
    @Override
    public EntityResult lastMoviesQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.movieDao, keyMap, attrList, "lastMovies");
    }


}
