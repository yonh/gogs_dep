# gogs_dep

更新Gogs版本至0.11.19 [2017-08-07]

- [ ] 写个脚本自动更新gogs镜像
- [ ] 写个脚本自动更新gogs程序
- [ ] 使用alpine打包
  利用docker部署gogs  
  镜像公开端口  
  3000: http服务  
  22: ssh服务  

# 使用  
	# 下载镜像
	docker pull yonh/gogs
	# 启动镜像
	docker run -d \
		-p 3000:3000 \
		-p 2222:22 \
		yonh/gogs
	
	# build
	docker build -t yonh/gogs .
	
	# 访问server_name:3000进行安装

# 服务器部署
	#需要将/home/git挂在服务器上
	docker run -d -p 3000:3000 -p 2222:22 \
	-v /opt/git:/home/git \
	yonh/gogs
	
	使用sqlite的时候需要将sqlite数据文件存储在/home/git/目录,安装程序默认是存储在gogs程序的data目录	

# 升级gogs
需要将gogs-repositories和gogs.db拷走,以防数据出现问题，当然如果你不是sqlite数据库则忽略数据库拷贝,  
停止原来的容器,然后执行run.sh创建容器  
到install页面重新填写安装信息  
按照git目录是`/home/git/gogs-repositories`配置库目录, `/home/git/gogs.db`配置db为sqlite  
Admin Account Settings上面的设置不用填写,因为原来的数据数据库已存在  
完成后使用原来账号登录即可

