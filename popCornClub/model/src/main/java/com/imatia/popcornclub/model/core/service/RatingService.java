package com.imatia.popcornclub.model.core.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.imatia.popcornclub.api.core.service.IRatingService;
import com.imatia.popcornclub.model.core.dao.RatingDao;
import com.ontimize.db.EntityResult;
import com.imatia.popcornclub.model.core.dao.RatingDao;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;

@Service("RatingService")
@Lazy
public class RatingService implements IRatingService{

 @Autowired private RatingDao ratingDao;
 @Autowired private DefaultOntimizeDaoHelper daoHelper;
 @Autowired private MovieService movieService;
 
 @Override
 public EntityResult ratingQuery(Map<String, Object> keyMap, List<String> attrList)
   throws OntimizeJEERuntimeException {
  return this.daoHelper.query(this.ratingDao, keyMap, attrList);
 }

 @Override
 public EntityResult ratingInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
  EntityResult newRating = this.daoHelper.insert(this.ratingDao, attrMap);
  Map allRatingsAttrMap = new HashMap();
  allRatingsAttrMap.put("id_movie",attrMap.get("id_movie"));
  //allRatingsAttrMap.add("rating");
  List<String> ratingColumnsAllRatings = new ArrayList<>();
  ratingColumnsAllRatings.add("rating_value");
  EntityResult currentRatingsForMovie = this.daoHelper.query(this.ratingDao, allRatingsAttrMap, ratingColumnsAllRatings);
  float newAverageRating = calculateAverageRating(currentRatingsForMovie);
  Map newMovieAverage = new HashMap();
  newMovieAverage.put("media_rating",newAverageRating);
  Map newMovieFilter = new HashMap();
  newMovieFilter.put("id_movie", attrMap.get("id_movie"));
  movieService.movieUpdate(newMovieAverage, newMovieFilter);
  return newRating;
 }

 private float calculateAverageRating (EntityResult allRatingsForMovie) {
  float ratingsNumbers = allRatingsForMovie.calculateRecordNumber();
  float ratingsSum = 0;
  for (int i = 0 ; i < ratingsNumbers; i++) {
   ratingsSum = ratingsSum + (float) allRatingsForMovie.getRecordValues(i).get("rating_value");
  }
  return ratingsSum / ratingsNumbers;
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

}