CREATE TABLE item_master (
   item varchar(15) NOT NULL,
   item_desc varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   PRIMARY KEY (item)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE item_loc(
   item     varchar(15),
   location int,
   unit_qty int not NULL,
   price    numeric,
   PRIMARY KEY (item,location)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE store (
   store       int not NULL,
   store_name  varchar(50),
   store_phone varchar(20),
   PRIMARY KEY (store)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

insert into item_master (item,item_desc) values(1,'Rtror keybord');
insert into item_master (item,item_desc) values(2,'5nofetch keyboard');
insert into item_master (item,item_desc) values(3,'X-book laptop');
insert into item_master (item,item_desc) values(4,'Zisys laptop');
insert into item_master (item,item_desc) values(5,'Vi laptop');
insert into item_master (item,item_desc) values(6,'notAbook laptop');

insert into store (store,store_name,store_phone) values(1,'5th Ave store','+95544567894');
insert into store (store,store_name,store_phone) values(2,'Downtown','+95542243587');
insert into store (store,store_name,store_phone) values(3,'Sea port','+95543653346');

insert into item_loc (item,location,unit_qty,price) values (1,1,3,34.4);
insert into item_loc (item,location,unit_qty,price) values (3,1,2,999);
insert into item_loc (item,location,unit_qty,price) values (4,1,6,750);
insert into item_loc (item,location,unit_qty,price) values (1,2,1,34.5);
insert into item_loc (item,location,unit_qty,price) values (2,2,9,39);
insert into item_loc (item,location,unit_qty,price) values (3,2,5,998);
insert into item_loc (item,location,unit_qty,price) values (4,2,6,1005);
insert into item_loc (item,location,unit_qty,price) values (5,2,4,600);
insert into item_loc (item,location,unit_qty,price) values (6,2,1,599);
insert into item_loc (item,location,unit_qty,price) values (2,3,5,37);
insert into item_loc (item,location,unit_qty,price) values (3,3,6,1000);
insert into item_loc (item,location,unit_qty,price) values (5,3,7,650);
insert into item_loc (item,location,unit_qty,price) values (6,3,4,546);

commit;
