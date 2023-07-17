
    create table tb_belonging (
        position integer,
        game_id bigint not null,
        list_id bigint not null,
        primary key (game_id, list_id)
    );

    create table tb_game (
        game_year integer,
        score float(53),
        id bigserial not null,
        long_description varchar(1000000),
        short_description varchar(1000000),
        genre varchar(255),
        img_url varchar(255),
        plataforms varchar(255),
        title varchar(255),
        primary key (id)
    );

    create table tb_game_list (
        id bigserial not null,
        name varchar(255),
        primary key (id)
    );

    alter table if exists tb_belonging 
       add constraint FKrchwdikeu66uky1hf75ym1kh 
       foreign key (list_id) 
       references tb_game_list;

    alter table if exists tb_belonging 
       add constraint FK2slybclee7wdfxhfltbvqkgpg 
       foreign key (game_id) 
       references tb_game;
