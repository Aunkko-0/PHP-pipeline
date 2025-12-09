# ใช้ Official Image ของ PHP ที่มาพร้อม Apache
FROM php:8.2-apache

# ติดตั้ง Extension ที่จำเป็น (ตัวอย่าง: mysqli)
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copy Source Code เข้าไปใน Container
COPY src/ /var/www/html/

# เปิด Port 80
EXPOSE 80