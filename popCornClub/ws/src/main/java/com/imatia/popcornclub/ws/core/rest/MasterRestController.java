package com.imatia.popcornclub.ws.core.rest;

import com.imatia.popcornclub.api.core.service.IMasterService;
import com.ontimize.db.EntityResult;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/master")
@ComponentScan(basePackageClasses = {com.imatia.popcornclub.api.core.service.IMasterService.class})
public class MasterRestController extends ORestController<IMasterService> {

    @Autowired IMasterService masterService;

    @Override
    public IMasterService getService() {
        return this.masterService;
    }

    @RequestMapping(value = "/nationalityMovie", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public EntityResult getNationalityMovie(@RequestBody Map<String, Object> req) {
        try {
            List<String> columns = (List<String>) req.get("columns");
            Map<String, Object> key = new HashMap<String, Object>();
            return masterService.nationalityMovieQuery(key, columns);
        } catch (Exception e) {
            e.printStackTrace();
            EntityResult res = new EntityResult();
            res.setCode(EntityResult.OPERATION_WRONG);
            return res;
        }
    }
}
