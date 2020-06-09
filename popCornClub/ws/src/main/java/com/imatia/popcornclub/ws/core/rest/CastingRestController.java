package com.imatia.popcornclub.ws.core.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.imatia.popcornclub.api.core.service.ICastingService;
import com.ontimize.jee.server.rest.ORestController;

@RestController
@RequestMapping("/casting")
@ComponentScan(basePackageClasses = { com.imatia.popcornclub.api.core.service.ICastingService.class })
public class CastingRestController extends ORestController<ICastingService> {

 @Autowired
 private ICastingService castingService;

 @Override
 public ICastingService getService() {
  return this.castingService;
 }
}