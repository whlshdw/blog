---
title: Markdown-段落背景突出美化
author: 是鲸鱼
top: false
cover: true
toc: true
mathjax: false
date: 2019-11-18 18:29:03
#img:
#coverImg: 
password:
summary: 查询Markdown文档没有发现如何让段落高亮或如何给某个段落添加背景色。
tags: 
- Markdown

categories: 
- 技术分享
---

------



> 查询 Markdown 文档没有发现如何让段落高亮或如何给某个段落添加背景色。
> 目前的解决方法是：**通过添加HTML代码来实现 [高亮突出显示]**

##### 应用场景：

文章段落中需要用到高亮文章内容



##### 实现方式：

```html
<table>  
    <tr>    
        <td bgcolor="FAEBD7">这里是段落文字</td>  
    </tr>
</table>
```



##### 网页展示效果：

<table> 
    <tbody>
    <tr>    
        <td bgcolor="AAEBD7">
            这里是段落文字…
        <br>
            这里是段落文字… 
        </td>  
    </tr>
</table>

