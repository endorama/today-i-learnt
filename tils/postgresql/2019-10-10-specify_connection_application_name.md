# Specify connection application name
 
_Category: postgresql_  
_Generated on 2019-10-10_  
_source: [source]_  

|---|---|
|Category|*postgresql*|
|Source|[source]|

[source]: https://www.postgresql.org/docs/10/libpq-connect.html

You can specify `application_name` in posgres connection string:

```
  postgresql://.../database?application_name=myapp

  ```
If other Query parameters are already present use `&` to concatenate them.
```
