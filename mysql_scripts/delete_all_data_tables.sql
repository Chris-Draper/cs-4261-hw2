# This file contains all of the MySQL commands to delete the data tables
# It may be helpful to delete and re-create the data tables if you mess them up during development
# Deleting and re-creating the tables is very quick, so don't be scared to do it!

# Run these four statements first
# To run all of these statements at the same time....
# Click and drag to highlight the four statements then press ctrl+shift+enter
drop table clothing_type;
drop table clothing_color;
drop table clothing_style;
drop table clothing_season;

# Run these two statements second to clear the remaining data tables
# You can highlight and run these two statements with ctrl+shift+enter as well
drop table clothing_data;
drop table account_data;