# Sử dụng hình ảnh chính thức của Node.js làm hình ảnh cơ bản
FROM node:18-alpine

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép các tệp package.json và package-lock.json
COPY package*.json ./

# Cài đặt các phụ thuộc
RUN npm install

# Sao chép toàn bộ mã nguồn ứng dụng
COPY . .

# Build ứng dụng Next.js
RUN npm run build

# Mở cổng 3000
EXPOSE 3000

# Khởi động ứng dụng Next.js
CMD ["npm", "start"]