package controllers;

import play.*;
import play.mvc.*;

import models.Images;
import views.html.*;

public class Application extends Controller {
  
    public static Result index() {
	//Images.set();
        return ok(index.render(Images.find.all()));
    }

    public static Result images() {
	return ok();
    }
}
