package com.imatia.popcornclub.ws.core.rest;

import com.imatia.popcornclub.api.core.service.IGenreService;
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
@RequestMapping("/genres")
@ComponentScan(basePackageClasses =  {com.imatia.popcornclub.api.core.service.IGenreService.class})
public class GenreRestController  extends ORestController<IGenreService> {

    @Autowired private IGenreService genreService;

    @Override
    public IGenreService getService() {
        return this.genreService;
    }

    @RequestMapping(value = "/genreMovie", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public EntityResult getGenreMovie(@RequestBody Map<String, Object> req) {
        try {
            List<String> columns = (List<String>) req.get("columns");
            Map<String, Object> key = new HashMap<String, Object>();
            return genreService.genreMovieQuery(key, columns);
        } catch (Exception e) {
            e.printStackTrace();
            EntityResult res = new EntityResult();
            res.setCode(EntityResult.OPERATION_WRONG);
            return res;
        }
    }
}
