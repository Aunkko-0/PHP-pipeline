# 1. เลือก Base Image เป็น PHP พร้อม Apache Web Server
FROM php:8.1-apache

# 2. เปิดใช้งาน Module rewrite ของ Apache (เผื่อใช้ในอนาคต)
RUN a2enmod rewrite

# 3. Copy ไฟล์ index.php (และอื่นๆ) เข้าไปที่โฟลเดอร์ Web Root ของ Apache
COPY . /var/www/html/

# 4. บอกว่า Container นี้จะทำงานที่ Port 80
EXPOSE 80