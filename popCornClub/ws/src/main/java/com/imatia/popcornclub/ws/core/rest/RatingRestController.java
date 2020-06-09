package com.imatia.popcornclub.ws.core.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.imatia.popcornclub.api.core.service.INationalityService;
import com.imatia.popcornclub.api.core.service.IRatingService;
import com.ontimize.jee.server.rest.ORestController;

@RestController
@RequestMapping("/rating")
@ComponentScan(basePackageClasses = { com.imatia.popcornclub.api.core.service.IRatingService.class })
public class RatingRestController extends ORestController<IRatingService> {

 @Autowired
 private IRatingService ratingService;

 @Override
 public IRatingService getService() {
  return this.ratingService;
 }
}