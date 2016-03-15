# Mysqldump permissions
 
_Category: mysql_
_Generated on 2016-03-15_


User permission to use mysqldump properly

## Using mysqldump with --opt (or anything else that locks tables)

Required permissions: `SELECT, LOCK TABLES`

## Using mysqldump with --single-transaction

Only for InnoDB tables, see [docs](https://dev.mysql.com/doc/refman/5.7/en/mysqldump.html#option_mysqldump_single-transaction)

Required permissions: `SELECT`