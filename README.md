# [博客简介](https://whlshdw.github.io)

### 安装软件
- [git](https://git-scm.com/download)
- [node.js](https://nodejs.org/zh-cn/download/releases/)， v12.4.0比较合适
- 域名 + github + github pages + actions
- blog仓库为源文件，x.github.io仓库为Github Pages 

1. 进入博客文件夹 source/ 目录下创建 _posts 目录，新建一篇文章以 .md结尾的文章 xx.md。
> hexo g&&hexo s 浏览器访问 http://localhost:4000 显示 cannot Get/ 原因为 _posts 下无文章，hexo g 未生成 index.html 。 

2. cd 博客文件夹根目录，npm install 安装包。  

3. hexo clean&&hexo g&&hexo s 创建本地服务，浏览器访问 http://localhost:4000

> clean: 清除原有.html, g: 生成 .html文件，s：创建本地访问服务占用40000端口 

### 个性化设置
- 根目录/_config.yml
- 根目录/themes/next/_config.yml
> 编辑文件替换相应内容
### 博客来源
用的是[木子](https://blog.502.li)的博客主题（开源），居于hexo next主题。
