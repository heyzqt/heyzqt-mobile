# # 制定node镜像的版本
# FROM node:8.11.1
# # 声明作者
# LABEL version="1.0.0" maintainer="heyzqt@qq.com"
# # 将当前目录下所有文件全都拷贝到image的./app目录下
# COPY . /app
# # 指定工作目录
# WORKDIR /app
# # 安装依赖
# RUN npm install --registry=https://registry.npm.taobao.org
# # 对外暴露接口
# EXPOSE 3000
# # 容器启动时执行的命令
# CMD npm run start
FROM nginx
COPY dist/ /usr/share/nginx/html/
COPY nginx/default.conf /etc/nginx/conf.d/default.confs