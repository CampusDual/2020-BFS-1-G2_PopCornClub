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
    public EntityResult nationalityMovieQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;

    //RATING
    public EntityResult ratingQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult ratingInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult ratingUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult ratingDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

    //WISHLIST
    public EntityResult wishlistQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult wishlistInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult wishlistUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult wishlistDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

    //CASTING_HAS_MOVIE
    public EntityResult castingHasMovieQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult castingHasMovieInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult castingHasMovieUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult castingHasMovieDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

    //CATEGORY_HAS_MOVIE
    public EntityResult categoryHasMovieQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult categoryHasMovieInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult categoryHasMovieUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult categoryHasMovieDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

    //FAVORITE_CASTING_HAS_USER
    public EntityResult favoriteCastingHasUserQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult favoriteCastingHasUserInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult favoriteCastingHasUserUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult favoriteCastingHasUserDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

    //FAVORITE_GENRE_HAS_USER
    public EntityResult favoriteGenreHasUserQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult favoriteGenreHasUserInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult favoriteGenreHasUserUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult favoriteGenreHasUserDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

    //FAVORITE_MOVIE_HAS_USER
    public EntityResult favoriteMovieHasUserQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult favoriteMovieHasUserInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult favoriteMovieHasUserUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult favoriteMovieHasUserDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

    //GENRE_HAS_MOVIE
    public EntityResult genreHasMovieQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult genreHasMovieInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult genreHasMovieUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult genreHasMovieDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

    //NATIONALITY_HAS_MOVIE
    public EntityResult nationalityHasMovieQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult nationalityHasMovieInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult nationalityHasMovieUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult nationalityHasMovieDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
}
