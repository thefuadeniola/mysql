# You can change this to a newer version of MySQL available at
# https://hub.docker.com/r/mysql/mysql-server/tags/
FROM mysql/mysql-server:8.0.24

# Copy and rename the MySQL config file
COPY config/user.cnf /etc/mysql/my.cnf

# Copy the SQL initialization directory
COPY ./sqltables/ /docker-entrypoint-initdb.d/
