# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table images (
  id                        bigint not null,
  name                      varchar(255),
  path                      varchar(255),
  page                      integer,
  slide_id                  bigint,
  created_date              timestamp not null,
  constraint pk_images primary key (id))
;

create table slides (
  id                        bigint not null,
  created_date              timestamp not null,
  constraint pk_slides primary key (id))
;

create sequence images_seq;

create sequence slides_seq;

alter table images add constraint fk_images_slide_1 foreign key (slide_id) references slides (id) on delete restrict on update restrict;
create index ix_images_slide_1 on images (slide_id);



# --- !Downs

SET REFERENTIAL_INTEGRITY FALSE;

drop table if exists images;

drop table if exists slides;

SET REFERENTIAL_INTEGRITY TRUE;

drop sequence if exists images_seq;

drop sequence if exists slides_seq;

