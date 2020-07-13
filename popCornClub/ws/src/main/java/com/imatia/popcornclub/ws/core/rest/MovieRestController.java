package com.imatia.popcornclub.ws.core.rest;
import com.imatia.popcornclub.api.core.service.IMovieService;
import com.ontimize.db.EntityResult;
import com.ontimize.jee.server.rest.ORestController;

import java.awt.*;
import java.util.*;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/movies")
@ComponentScan(basePackageClasses =  {com.imatia.popcornclub.api.core.service.IMovieService.class})

public class MovieRestController extends ORestController<IMovieService>{

    @Autowired
    private IMovieService movieService;

    @Override
    public IMovieService getService() {
        return this.movieService;
    }
    
    @RequestMapping(value = "/infoMovies", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public EntityResult getMovie(@RequestBody Map<String, Object> req) {
		try {
			List<String> columns = (List<String>) req.get("columns");
			Map<String, Object> key = new HashMap<String, Object>();
			return movieService.infoMoviesQuery(key, columns);
		} catch (Exception e) {
			e.printStackTrace();
			EntityResult res = new EntityResult();
			res.setCode(EntityResult.OPERATION_WRONG);
			return res;
		}
	}
    
    @RequestMapping(value = "/lastMovies", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
   	public EntityResult getLastMovie(@RequestBody Map<String, Object> req) {
   		try {
   			List<String> columns = (List<String>) req.get("columns");
   			Map<String, Object> key = new HashMap<String, Object>();
   			return movieService.lastMoviesQuery(key, columns);
   		} catch (Exception e) {
   			e.printStackTrace();
   			EntityResult res = new EntityResult();
   			res.setCode(EntityResult.OPERATION_WRONG);
   			return res;
   		}
   	}
    
    @RequestMapping(value = "/rankMovies", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
   	public EntityResult getRankMovie(@RequestBody Map<String, Object> req) {
   		try {
   			List<String> columns = (List<String>) req.get("columns");
   			Map<String, Object> key = new HashMap<String, Object>();
   			return movieService.rankMoviesQuery(key, columns);
   		} catch (Exception e) {
   			e.printStackTrace();
   			EntityResult res = new EntityResult();
   			res.setCode(EntityResult.OPERATION_WRONG);
   			return res;
   		}
   	}

	@RequestMapping(value = "/relatedMovies", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public EntityResult getRelatedMovie(@RequestBody Map<String, Object> req) {
		try {
			List<String> columns = (List<String>) req.get("columns");
			Map<String, Object> key = new HashMap<String, Object>();
			return movieService.relatedMoviesQuery(key, columns);
		} catch (Exception e) {
			e.printStackTrace();
			EntityResult res = new EntityResult();
			res.setCode(EntityResult.OPERATION_WRONG);
			return res;
		}
	}
}
