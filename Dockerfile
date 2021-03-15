FROM mysql:5.7.33

# Add default mysql env 
ENV MYSQL_DATABASE=vmq_mysql
ENV MYSQL_ROOT_PASSWORD=vmq_mysql

# Initial database
ADD 001-structure.sql /docker-entrypoint-initdb.d/001-structure.sql
