package com.imatia.popcornclub.model.core.service;

import com.imatia.popcornclub.api.core.service.IMasterService;
import com.imatia.popcornclub.model.core.dao.*;
import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import com.ontimize.jee.server.dao.IOntimizeDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service("MasterService")
@Lazy
public class MasterService implements IMasterService {

    @Autowired private CategoryDao categoryDao;
    @Autowired private NationalityDao nationalityDao;
    @Autowired private RatingDao ratingDao;
    @Autowired private CastingHasMovieDao castingHasMovieDao;
    @Autowired private CategoryHasMovieDao categoryHasMovieDao;
    @Autowired private FavoriteCastingHasUserDao favoriteCastingHasUserDao;
    @Autowired private FavoriteGenreHasUserDao favoriteGenreHasUserDao;
    @Autowired private FavoriteMovieHasUserDao favoriteMovieHasUserDao;
    @Autowired private GenreHasMovieDao genreHasMovieDao;
    @Autowired private NationalityHasMovieDao nationalityHasMovieDao;
    @Autowired private DefaultOntimizeDaoHelper daoHelper;



    //CATEGORY
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

    //NATIONALITY
    @Override
    public EntityResult nationalityQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.nationalityDao, keyMap, attrList);
    }
    @Override
    public EntityResult nationalityInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.nationalityDao, attrMap);
    }
    @Override
    public EntityResult nationalityUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.nationalityDao, attrMap, keyMap);
    }
    @Override
    public EntityResult nationalityDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.nationalityDao, keyMap);
    }

    @Override
    public EntityResult nationalityMovieQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.nationalityDao, keyMap, attrList, "nationalityMovie");
    }

    //RATING
    @Override
    public EntityResult ratingQuery(Map<String, Object> keyMap, List<String> attrList)
            throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.ratingDao, keyMap, attrList);
    }
    @Override
    public EntityResult ratingInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.ratingDao, attrMap);
    }
    @Override
    public EntityResult ratingUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap)
            throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.ratingDao, attrMap, keyMap);
    }
    @Override
    public EntityResult ratingDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.ratingDao, keyMap);
    }

    //CASTING_HAS_MOVIE
    @Override
    public EntityResult castingHasMovieQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.castingHasMovieDao, keyMap, attrList);
    }
    @Override
    public EntityResult castingHasMovieInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.castingHasMovieDao, attrMap);
    }
    @Override
    public EntityResult castingHasMovieUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.castingHasMovieDao, attrMap, keyMap);
    }
    @Override
    public EntityResult castingHasMovieDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.castingHasMovieDao, keyMap);
    }

    //CATEGORY_HAS_MOVIE
    @Override
    public EntityResult categoryHasMovieQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.categoryHasMovieDao, keyMap, attrList);
    }
    @Override
    public EntityResult categoryHasMovieInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.categoryHasMovieDao, attrMap);
    }
    @Override
    public EntityResult categoryHasMovieUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.categoryHasMovieDao, attrMap, keyMap);
    }
    @Override
    public EntityResult categoryHasMovieDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.categoryHasMovieDao, keyMap);
    }

    //FAVORITE_CASTING_HAS_USER
    @Override
    public EntityResult favoriteCastingHasUserQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.favoriteCastingHasUserDao, keyMap, attrList);
    }
    @Override
    public EntityResult favoriteCastingHasUserInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.favoriteCastingHasUserDao, attrMap);
    }
    @Override
    public EntityResult favoriteCastingHasUserUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.favoriteCastingHasUserDao, attrMap, keyMap);
    }
    @Override
    public EntityResult favoriteCastingHasUserDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.favoriteCastingHasUserDao, keyMap);
    }

    //FAVORITE_GENRE_HAS_USER
    @Override
    public EntityResult favoriteGenreHasUserQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.favoriteGenreHasUserDao, keyMap, attrList);
    }
    @Override
    public EntityResult favoriteGenreHasUserInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.favoriteCastingHasUserDao, attrMap);
    }
    @Override
    public EntityResult favoriteGenreHasUserUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.favoriteCastingHasUserDao, attrMap, keyMap);
    }
    @Override
    public EntityResult favoriteGenreHasUserDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.favoriteCastingHasUserDao, keyMap);
    }


    //FAVORITE_MOVIE_HAS_USER
    @Override
    public EntityResult favoriteMovieHasUserQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.favoriteMovieHasUserDao, keyMap, attrList);
    }
    @Override
    public EntityResult favoriteMovieHasUserInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.favoriteMovieHasUserDao, attrMap);
    }
    @Override
    public EntityResult favoriteMovieHasUserUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.favoriteMovieHasUserDao, attrMap, keyMap);
    }
    @Override
    public EntityResult favoriteMovieHasUserDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.favoriteMovieHasUserDao, keyMap);
    }


    //GENRE_HAS_MOVIE
    @Override
    public EntityResult genreHasMovieQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.genreHasMovieDao, keyMap, attrList);
    }
    @Override
    public EntityResult genreHasMovieInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.genreHasMovieDao, attrMap);
    }
    @Override
    public EntityResult genreHasMovieUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.genreHasMovieDao, attrMap, keyMap);
    }
    @Override
    public EntityResult genreHasMovieDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.genreHasMovieDao, keyMap);
    }

    //NATIONALITY_HAS_MOVIE
    @Override
    public EntityResult nationalityHasMovieQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.nationalityHasMovieDao, keyMap, attrList);
    }

    @Override
    public EntityResult nationalityHasMovieInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.nationalityHasMovieDao, attrMap);
    }

    @Override
    public EntityResult nationalityHasMovieUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.nationalityHasMovieDao, attrMap, keyMap);
    }

    @Override
    public EntityResult nationalityHasMovieDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.nationalityHasMovieDao, keyMap);
    }
}
