-- SET @user = 'rails_user';
-- SET @password = 'rails_user';
-- SET @host = 'localhost';

CREATE USER 'rails_user'@'localhost' IDENTIFIED BY 'rails_user';

GRANT ALL PRIVILEGES ON simple_cms_test. * TO 'rails_user'@'localhost';

#
# Starting with MySQL 8.0.4, the MySQL team changed the 
# default authentication plugin for MySQL server 
# from mysql_native_password to caching_sha2_password.
#
# The command below will make the appropriate updates for your user account.
#
# See the MySQL Reference Manual for details: 
# https://dev.mysql.com/doc/refman/8.0/en/caching-sha2-pluggable-authentication.html
#
ALTER USER 'rails_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'rails_user';