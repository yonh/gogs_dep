Gogs - Go Git Service [![Build Status](https://travis-ci.org/gogits/gogs.svg?branch=master)](https://travis-ci.org/gogits/gogs)
=====================

Gogs (Go Git Service) 是一款可轻易搭建的自助 Git 服务。

![Demo](http://gogs.qiniudn.com/gogs_demo.gif)

##### 当前版本：0.6.1 Beta

## 开发目的

Gogs 的目标是打造一个最简单、最快速和最轻松的方式搭建自助 Git 服务。使用 Go 语言开发使得 Gogs 能够通过独立的二进制分发，并且支持 Go 语言支持的 **所有平台**，包括 Linux、Mac OS X 以及 Windows。

## 项目概览

- 有关项目设计、已知问题和变更日志，请通过 [使用手册](http://gogs.io/docs/intro/) 查看。
- 您可以到 [Trello Board](https://trello.com/b/uxAoeLUl/gogs-go-git-service) 跟随开发团队的脚步。
- 想要先睹为快？通过 [在线体验](https://try.gogs.io/unknwon/gogs) 或查看 **安装部署 -> 二进制安装** 小节。
- 使用过程中遇到问题？尝试从 [故障排查](http://gogs.io/docs/intro/troubleshooting.md) 页面获取帮助。
- 希望帮助多国语言界面的翻译吗？请立即访问 [详情页面](http://gogs.io/docs/features/i18n.html)！

## 功能特性

- 活动时间线
- 支持 SSH/HTTP(S) 协议
- 支持 SMTP/LDAP/反向代理 用户认证
- 支持反向代理子路径
- 支持 注册/删除/重命名 用户
- 支持 创建/管理/删除 组织以及团队管理功能
- 支持 创建/派生/迁移/镜像/删除/关注/重命名/转移 公开/私有 仓库
- 支持仓库 浏览/发布/工单管理
- 支持仓库和组织级别 Web 钩子
- 支持仓库 Git 钩子
- 支持 添加/删除 仓库协作者
- 支持 Gravatar 以及本地缓存
- 支持邮件服务（注册、Issue）
- 管理员面板
- Slack Web 钩子集成
- Drone CI 持续部署集成
- 支持 MySQL、PostgreSQL 以及 SQLite3 数据库
- 社交帐号登录（GitHub、Google、QQ、微博）
- 多语言支持（[11 种语言]([more](https://crowdin.com/project/gogs))）

## 系统要求

- 最低的系统硬件要求为一个廉价的树莓派
- 如果用于团队项目，建议使用 2 核 CPU 及 1GB 内存

## 安装部署

在安装 Gogs 之前，您需要先安装 [基本环境](http://gogs.io/docs/installation/)。

然后，您可以通过以下 5 种方式来安装 Gogs：

- [二进制安装](http://gogs.io/docs/installation/install_from_binary.md)
- [源码安装](http://gogs.io/docs/installation/install_from_source.md)
- [包管理安装](http://gogs.io/docs/installation/install_from_packages.md)
- [采用 Docker 部署](https://github.com/gogits/gogs/tree/master/docker)
- [通过 Vagrant 安装](https://github.com/geerlingguy/ansible-vagrant-examples/tree/master/gogs)

## 特别鸣谢

- 基于 [Macaron](https://github.com/Unknwon/macaron) 的路由与中间件机制。
- 基于 [WeTalk](https://github.com/beego/wetalk) 修改的邮件服务和模块设计。
- 基于 [GoBlog](https://github.com/fuxiaohei/goblog) 修改的系统监视状态。
- 感谢 [gobuild.io](http://gobuild.io) 提供二进制编译与下载服务。
- 感谢 [lavachen](http://www.lavachen.cn/) 和 [Rocker](http://weibo.com/rocker1989) 设计的 Logo。
- 感谢 [Crowdin](https://crowdin.com/project/gogs) 提供免费的开源项目本地化支持。

## 贡献成员

- 本项目的 [开发团队](http://gogs.io/team)。
- 您可以通过查看 [贡献者页面](https://github.com/gogits/gogs/graphs/contributors) 获取完整的贡献者列表。
- 您可以通过查看 [TRANSLATORS](conf/locale/TRANSLATORS) 文件获取完整的翻译人员列表。

## 授权许可

本项目采用 MIT 开源授权许可证，完整的授权说明已放置在 [LICENSE](https://github.com/gogits/gogs/blob/master/LICENSE) 文件中。
