-- Schema definition, Movies Database

create table person (
    pid           int not null,
    name          varchar(20),
    birthday      date,                -- format YYYY-MM-DD  
    nationality   varchar(30),
    gender        varchar(1),          -- u is unknown
    constraint person_pk
    primary key (pid)
);

create table actor (
    pid    int not null,
    aguild smallint,
    constraint actor_fk
    foreign key (pid) references person,
    constraint actor_pk
    primary key (pid)
);

create table director (
    pid     int not null,
    dguild  smallint,
    constraint director_fk
    foreign key (pid) references person,
    constraint director_pk
    primary key (pid)
    on delete cascade
);

create table writer (
    pid     int not null,
    wguild  smallint,
    constraint writer_fk
    foreign key (pid) references person,
    constraint writer_pk
    primary key (pid)
);

create table studio (
    name           varchar(30) not null,                  
    constraint studio_pk
    primary key(name)
);

create table screenPlay (
    title          varchar(50) not null,           
    year           smallint not null,                             
    constraint screenPlay_pk
    primary key(title, year)
);

create table authored (
    title    varchar(50) not null,
    year     smallint not null,
    pid      int not null,                             -- writer
    constraint authored_pk
    primary key (title, year, pid),
    constraint authored_fk_screenPlay
    foreign key (title, year) references screenPlay,
    constraint authored_fk_writer
    foreign key (pid) references writer
);

create table movie (
    title           varchar(50) not null,                 --screenPlay
    name            varchar(30) not null,                 -- studio
    year            smallint not null,                    --screenPlay
    genre           varchar(20),
    pid             int not null,                          --director
    length          smallint,
    constraint movie_pk
    primary key(title, name, year),   
    constraint movie_fk_studio
    foreign key (name) references studio,
    constraint movie_fk_screenPlay
    foreign key (title, year) references screenPlay,
    constraint movie_fk_director
    foreign key (pid) references director   
    on delete cascade
                     
);

create table cast (
    title           varchar(50) not null,          --screenPlay ref movie ref screenplay
    name            varchar(30) not null,          -- studio
    year            smallint not null,             --screenPlay ref movie
    role            varchar(20) not null,
    pid             int not null,                  -- actor ref actor ref person
    minutes         smallint,
    constraint cast_pk
    primary key (title, name, year, role, pid),
    constraint cast_fk_movie
    foreign key (title, name, year) references movie,
    constraint cast_fk_actor
    foreign key (pid) references actor
    
);

create table affiliated (
    pid     int not null,             -- director
    name    varchar(20) not null,     -- studio
    constraint affiliated_pk
    primary key (pid, name),
    constraint affiliated_fk_director
    foreign key (pid) references director,
    constraint affiliated_fk_studio
    foreign key (name) references studio
);
