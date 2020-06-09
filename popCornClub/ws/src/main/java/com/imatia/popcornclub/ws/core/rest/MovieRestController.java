package com.imatia.popcornclub.ws.core.rest;
import com.imatia.popcornclub.api.core.service.IMovieService;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
