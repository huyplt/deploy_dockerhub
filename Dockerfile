# Sử dụng image chính thức của MySQL
FROM mysql:8

# Sao chép file cấu hình database vào container
COPY database.sql /docker-entrypoint-initdb.d/

# Cấu hình thông tin môi trường cho MySQL
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=mydatabase

# Mở cổng MySQL
EXPOSE 3306

# Chạy MySQL server khi container khởi động
CMD ["mysqld"]
