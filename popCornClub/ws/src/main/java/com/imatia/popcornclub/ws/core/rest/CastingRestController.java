package com.imatia.popcornclub.ws.core.rest;

import com.ontimize.db.EntityResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.imatia.popcornclub.api.core.service.ICastingService;
import com.ontimize.jee.server.rest.ORestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/castings")
@ComponentScan(basePackageClasses = { com.imatia.popcornclub.api.core.service.ICastingService.class })
public class CastingRestController extends ORestController<ICastingService> {

 @Autowired
 private ICastingService castingService;

 @Override
 public ICastingService getService() {
  return this.castingService;
 }
 @RequestMapping(value = "/castingMovie", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
 public EntityResult getActorMovie(@RequestBody Map<String, Object> req) {
  try {
   List<String> columns = (List<String>) req.get("columns");
   Map<String, Object> key = new HashMap<String, Object>();
   return castingService.castingMovieQuery(key, columns);
  } catch (Exception e) {
   e.printStackTrace();
   EntityResult res = new EntityResult();
   res.setCode(EntityResult.OPERATION_WRONG);
   return res;
  }
 }
}