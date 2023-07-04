---
title: HTML5-设置视频封面
author: 是鲸鱼
top: false
cover: true
toc: true
mathjax: false
date: 2019-11-18 18:29:03
#img: 
#coverImg:
password:
summary: 打开一个视频，在点击播放之前会看到一张封面图，点击之后封面消失，随即播放视频。若现有一需求，要你自定义给某个视频设置封面，应该怎么做呢？H5 video poster属性—设置视频封面。
tags: 
- 技巧
- HTML

categories: 
- 技术分享
---

------

> 打开一个视频，在点击播放之前会看到一张封面图，点击之后封面消失，随即播放视频。
> 若现有一需求，要你自定义给某个视频设置封面，应该怎么做呢？ 



##### 应用场景：

可使用 **H5 video**提供的**poster**属性即可轻松实现，**poster** 属性规定视频下载时显示的图像或用户点击播放按钮前显示的图像。如未设置该属性，则使用视频的第一帧代替。

<b>代码展示:</b>

```html
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>1025-生日快乐哈</title>
    </head>
    <body>
        <video width="60%" height="50%" poster="http://p5.music.126.net/j0eAy04FAtpavkgLDmkyWQ==/109951165417326499?imageView=1&type=webp&thumbnail=800x0&quality=60" controls>
            <source src="http://vodkgeyttp8.vod.126.net/vodkgeyttp8/P3Ktruh9_3177831959_uhd.mp4?wsSecret=9d9d9bafc2026aea0dd309facb914d69&wsTime=1614426964" type="video/mp4">
            <source src="http://vodkgeyttp8.vod.126.net/vodkgeyttp8/P3Ktruh9_3177831959_uhd.mp4" type="video/ogg">
        </video>
    </body>
</html>
```

<b>效果展示:</b>

<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>1025-生日快乐哈</title>
    </head>
    <body>
        <video width="60%" height="50%" poster="http://p5.music.126.net/j0eAy04FAtpavkgLDmkyWQ==/109951165417326499?imageView=1&type=webp&thumbnail=800x0&quality=60" controls>
            <source src="http://vodkgeyttp8.vod.126.net/vodkgeyttp8/P3Ktruh9_3177831959_uhd.mp4?wsSecret=9d9d9bafc2026aea0dd309facb914d69&wsTime=1614426964" type="video/mp4">
            <source src="http://vodkgeyttp8.vod.126.net/vodkgeyttp8/P3Ktruh9_3177831959_uhd.mp4" type="video/ogg">
        </video>
    </body>
</html>


**补充：** 

有时会出现视频封面无法铺满的情况，需要使用[**object-fit**](https://developer.mozilla.org/zh-CN/docs/Web/CSS/object-fit)属性铺满整个屏幕



