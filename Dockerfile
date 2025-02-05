# ใช้ Node.js เป็น base image
FROM node:18

# ตั้งค่าตัวแปร ENV เพื่อใช้ใน production
ENV NODE_ENV=production

# กำหนด working directory ใน container
WORKDIR /usr/src/app

# คัดลอก package.json และติดตั้ง dependencies
COPY package*.json ./
RUN npm install --only=production

# คัดลอกโค้ดและไฟล์เว็บไปที่ container
COPY . .

# เปิดพอร์ต 80
EXPOSE 80

# คำสั่งสำหรับรันแอปพลิเคชัน
CMD ["node", "server.js"]

