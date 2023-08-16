# 使用官方 Node.js 镜像作为基础镜像
FROM node:latest

# 创建一个非root用户
RUN groupadd -g 1001 appuser && useradd -r -u 1001 -g appuser appuser

# 设置工作目录
WORKDIR /app

# 将应用程序文件复制到容器中
COPY . .

# 更改文件的所有者为非root用户
RUN chown -R appuser:appuser /app

# 切换到非root用户
USER appuser

# 安装应用程序的依赖
RUN npm install

# 暴露应用程序监听的端口
EXPOSE 7860

# 设置默认的命令，即启动应用程序
CMD ["npm", "start"]
