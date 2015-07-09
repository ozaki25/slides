# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table images (
  id                        bigint not null,
  name                      varchar(255),
  path                      varchar(255),
  created_date              timestamp not null,
  constraint pk_images primary key (id))
;

create sequence images_seq;




# --- !Downs

SET REFERENTIAL_INTEGRITY FALSE;

drop table if exists images;

SET REFERENTIAL_INTEGRITY TRUE;

drop sequence if exists images_seq;

