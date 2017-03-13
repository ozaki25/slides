package controllers;

import play.*;
import play.mvc.*;

import models.Images;
import models.Slides;
import views.html.*;

public class Application extends Controller {

    public static Result index() {
        Slides slide = new Slides();
        slide.save();
        slide.setImages();
        return ok(index.render(slide));
    }
}
