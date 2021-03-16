FROM mysql:5.7.33

# Add default mysql env
ENV MYSQL_USER=vmq_mysql
ENV MYSQL_PASSWORD=vmq_mysql
ENV MYSQL_DATABASE=vmq_mysql
ENV MYSQL_RANDOM_ROOT_PASSWORD=yes

# Initial database
ADD 001-structure.sql /docker-entrypoint-initdb.d/001-structure.sql
