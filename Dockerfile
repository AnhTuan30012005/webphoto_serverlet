# Sử dụng Tomcat 9 và Java 17
FROM tomcat:9.0-jdk17-openjdk-slim

# Xóa ứng dụng mặc định để nhẹ máy
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file web của bạn vào
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080
EXPOSE 8080

# Chạy server
CMD ["catalina.sh", "run"]