#!/usr/bin/env sh
#该脚本用于将文件上传至github的blog仓库
# 当发生错误时中止脚本
set -e
git init
git checkout -B main
git add -A
git commit -m 'update'

# 部署到 https://<USERNAME>.github.io
git push -f git@github.com:whlshdw/blog.git main

cd -
