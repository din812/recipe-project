## docker run --name mysqldb  -v C:\Users\lenin\dockerdata\myqsl:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -d -p 3306:3306 -d mysql
CREATE DATABASE  recipe_dev;
Create DATABASE  recipe_prod;

CREATE USER 'recipe_dev_user'@'localhost' IDENTIFIED BY 'din';
CREATE USER 'recipe_prod_user'@'localhost' IDENTIFIED BY 'din';
CREATE USER 'recipe_dev_user'@'%' IDENTIFIED BY 'din';
CREATE USER 'recipe_prod_user'@'%' IDENTIFIED BY 'din';

GRANT SELECT ON recipe_dev.* to 'recipe_dev_user'@'localhost';
GRANT INSERT ON recipe_dev.* to 'recipe_dev_user'@'localhost';
GRANT DELETE ON recipe_dev.* to 'recipe_dev_user'@'localhost';
GRANT UPDATE ON recipe_dev.* to 'recipe_dev_user'@'localhost';
GRANT SELECT ON recipe_prod.* to 'recipe_prod_user'@'localhost';
GRANT INSERT ON recipe_prod.* to 'recipe_prod_user'@'localhost';
GRANT DELETE ON recipe_prod.* to 'recipe_prod_user'@'localhost';
GRANT UPDATE ON recipe_prod.* to 'recipe_prod_user'@'localhost';
GRANT SELECT ON recipe_dev.* to 'recipe_dev_user'@'%';
GRANT INSERT ON recipe_dev.* to 'recipe_dev_user'@'%';
GRANT DELETE ON recipe_dev.* to 'recipe_dev_user'@'%';
GRANT UPDATE ON recipe_dev.* to 'recipe_dev_user'@'%';
GRANT SELECT ON recipe_prod.* to 'recipe_prod_user'@'%';
GRANT INSERT ON recipe_prod.* to 'recipe_prod_user'@'%';
GRANT DELETE ON recipe_prod.* to 'recipe_prod_user'@'%';
GRANT UPDATE ON recipe_prod.* to 'recipe_prod_user'@'%';
