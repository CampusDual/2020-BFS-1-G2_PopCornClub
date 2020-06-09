package com.ontimize.hr.ws.core.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ontimize.hr.api.core.service.ICandidateService;
import com.ontimize.jee.server.rest.ORestController;

@RestController
@RequestMapping("/nationality")
@ComponentScan(basePackageClasses = { com.ontimize.hr.api.core.service.INationalityService.class })
public class NationalityRestController extends ORestController<INationalityService> {

 @Autowired
 private INationalityService nationalityService;

 @Override
 public INationalityService getService() {
  return this.nationalityService;
 }
}