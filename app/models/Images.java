package models;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import com.avaje.ebean.annotation.CreatedTimestamp;

import play.db.ebean.Model;
import play.db.ebean.Model.Finder;

@Entity
public class Images extends Model {
    @Id
    public Long id;
    public String name;
    public String path;
    public int page;
    @ManyToOne
    public Slides slide;
    @CreatedTimestamp
    public Date createdDate;

    public static Finder<Long, Images> find = new Finder(Long.class, Images.class);

    public Images(String name, String path, int page) {
        this.name = name;
        this.path = path;
        this.page = page;
    }
}
