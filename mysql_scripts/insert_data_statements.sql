# These statements will insert the test data into the tables
# Run these statements after the data tables have been created
# Press ctrl+a to highlight all the statements then ctrl+shift+enter to run the statements
# The statements will run from the top of the file to the bottom of the file
# This is important because some of the insert statements are dependent on each other

use my_closet;

insert into `account_data`
(username, user_pass, first_name, last_name)
values ('jon.deer@gmail.com', '123456', 'Jon', 'Deer'),
('bobdillworth@yahoo.com', '123456', 'Bob', 'Dillworth'),
('billwoodstock@charter.net', '123456', 'Bill', 'Woodstock');

insert into `clothing_data`
(username, c_name, c_store, c_img_path)
values ('jon.deer@gmail.com', 'Black Pants', 'Kohls', null),
('jon.deer@gmail.com', 'Blue Shirt', 'Old Navy', null),
('jon.deer@gmail.com', 'White Undershirt', 'Old Navy', null),
('jon.deer@gmail.com', 'Blue Jeans', 'Macys', null),
('bobdillworth@yahoo.com', 'Red Shirt', 'Old Navy', null),
('bobdillworth@yahoo.com', 'Green Shirt', 'Kohls', null),
('bobdillworth@yahoo.com', 'Jean Shorts', 'Gap', null),
('billwoodstock@charter.net', 'Black Suit Jacket', 'Macys', null),
('billwoodstock@charter.net', 'White Dress Shirt', 'Kohls', null);

insert into `clothing_type`
(c_id, username, c_type)
values (1, 'jon.deer@gmail.com', 'Pants');

insert into `clothing_color`
(c_id, username, c_color)
values (1, 'jon.deer@gmail.com', 'Black');

select * from clothing_color;

insert into `clothing_style`
(c_id, username, c_style)
values (1, 'jon.deer@gmail.com', 'Party'),
(1, 'jon.deer@gmail.com', 'Casual');

insert into `clothing_season`
(c_id, username, c_season)
values (1, 'jon.deer@gmail.com', 'Fall'),
(1, 'jon.deer@gmail.com', 'Winter');