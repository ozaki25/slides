package models;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.CascadeType;
import com.avaje.ebean.annotation.CreatedTimestamp;

import play.db.ebean.Model;
import play.db.ebean.Model.Finder;

@Entity
public class Slides extends Model {
    @Id
    public Long id;
    @OneToMany(cascade = CascadeType.ALL)
    public List<Images> images;
    @CreatedTimestamp
    public Date createdDate;

    public static Finder<Long, Slides> find = new Finder(Long.class, Slides.class);

    public void setImages() {
	for(int i = 1; i < 6; i++) {
	    Images image = new Images(i + ".jpg", "images/" + i + ".jpg", i);
	    image.save();
	    this.images.add(image);
	}
    }
}
