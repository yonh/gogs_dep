# gogs_dep
- [ ] 写个脚本自动更新gogs镜像
- [ ] 写个脚本自动更新gogs程序
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
 
# 在云雀云上部署
步骤:  
1.创建服务的时候,选择将3000/tcp,映射到http-endpoint,这样我们就可以直接访问web服务而不加端口号  
2.启动服务后,会获得一个url地址,如http://gogs-yonh.myalauda.cn, 以及2222端口映射到的另一个端口,假设是22222  
3.访问http://gogs-yonh.myalauda.cn 进入安装界面    
4.更改设置,根据你的情况来输入  
  域名    => gogs-yonh.myalauda.cn  
  端口    => 80  
  应用url => http://gogs-yonh.myalauda.cn/  
5.安装完毕  
  因为云雀云会将镜像公开的端口映射到另外的一些端口上,因此我们在使用ssh方式访问git的时候需要更改端口(见服务地址页)  
  如 git clone ssh://git@gogs-yonh.myalauda.cn:22222/yonh/gogs.git  

# 服务器部署
	#需要将/home/git挂在服务器上
	docker run -d -p 3000:3000 -p 2222:22 \
	-v /opt/git:/home/git \
	yonh/gogs

	使用sqlite的时候需要将sqlite数据文件存储在/home/git/目录,安装程序默认是存储在gogs程序的data目录	
