package com.imatia.popcornclub.ws.core.rest;

import com.imatia.popcornclub.api.core.service.IMasterService;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/master")
@ComponentScan(basePackageClasses = {com.imatia.popcornclub.api.core.service.IMasterService.class})
public class MasterRestController extends ORestController<IMasterService> {

    @Autowired IMasterService masterService;

    @Override
    public IMasterService getService() {
        return this.masterService;
    }
}
