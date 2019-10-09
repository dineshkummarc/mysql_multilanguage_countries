#########################################################################
#Custom MySQL table populator                                           #
#This script will create a custom table on a given database and         #
#populate it with countries translations                                #
#This script was written by Paolo Porqueddu                             #
#########################################################################

#!/bin/bash


echo -n "Custom countries table generator"
echo -n "Please indicate your database name "
read database_name
echo -n "Please indicate a name for your countries table "
read table_name

sed -i -e 's/`countries`/`$database_name.$table_name`/g' mysql_countries.sql

echo "File mysql_countries.sql ready. Please run into MySQL server with command: mysql -u 'YOUR_USERNAME' '-pXXXXXXXX' 'database-name' < 'mysql_countries.sql'"
echo "replacing YOUR_USERNAME with your MySQL user and XXXXXXXX with your password"
