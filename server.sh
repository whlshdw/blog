#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e
#将index.html等文件部署到github中，通过 whlshdw.github.io 或者暂时用：blog.sthwhl.com 访问
hexo clean && hexo g && hexo s
#退出
cd -
