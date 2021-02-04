---
title: 改变Markdown表格列宽
author: 是鲸鱼
top: false
cover: true
toc: true
mathjax: false
date: 2019-11-18 18:29:03
#img: 
#coverImg:
password:
summary: 解决Markdown表格的排版问题
tags: 
- Markdown技巧

categories: 
- 网页
---

------

#### 应用场景：
表格复杂,内容多的时，默认Markdown语法的表格排版较为混乱，列宽不成比例，内容挤成一堆。解决办法是通过加入语法进行调整列宽，根据他人总结方法，这里汲取我自己需要的内容做记录，方便后续自己使用。

#### 实现方式：

##### 方法1：使用空的<img.> 标签

```html
| a | b | c |
|---|---|---|
| 1 |  <img width=200/> | 3 | 
```

**展示效果：**

| a    | b                | c    |
| ---- | ---------------- | ---- |
| 1    | <img width=300/> | 3    |

##### 方法1：指定列宽，控制换行

使用 `<div style="width:[长度]">[单元格文本]</div>` 

长度单位：pt,px,cm等

**补充概念：**px就是表示pixel，像素，是屏幕上显示数据的最基本的点；而pt就是point，是印刷行业常用单位，等于1/72英寸。在网页设计中，pixel是相对大小，而point是绝对大小。

```html
**默认**

| a | b | d |
|---|---|---|
| 1 | very very very very very long long long long long text | 3 |

**使用后效果**

| a | b | d |
|---|---|---|
| 1 | <div style="width: 150pt">very very very very very lonng long long long long text</div>| 3 |
```

**展示效果：**

| a    | b                                                      | d    |
| ---- | ------------------------------------------------------ | ---- |
| 1    | very very very very very long long long long long text | 3    |

***

| a    | b                                                            | d    |
| ---- | ------------------------------------------------------------ | ---- |
| 1    | <div style="width: 150pt">very very very very very lonng long long long long text</div> | 3    |



##### 方法2：外部定义「Style」指定各列的列宽

**这种方法是全局起效的** 如果在一篇文章中，需要不同样式的表格，那么就需要额外的利用 css 语言定义不同种的表格类。

**补充概念：** 相对单位em是相对于元素本身的字体大小的。假定当前默认字体尺寸是14px，n em即为14px字体尺寸的n倍。

1. 直接指定列宽大小

```html
<style>
table th:first-of-type {
    width: 4cm;
}
table th:nth-of-type(2) {
    width: 150pt;
}
table th:nth-of-type(3) {
    width: 8em;
}
</style>

| a | b | c |
|---|---|---|
| 列宽 = 3 cm| 列宽 = 5 cm| 列宽 = 8em |
```

**展示效果：**

<head>
<style>
table th:first-of-type {
    width: 4cm;
}
table th:nth-of-type(2) {
    width: 150pt;
}
table th:nth-of-type(3) {
    width: 8em;
}
</style>
</head>

| a | b | c |
|---|---|---|
| 列宽 = 3 cm| 列宽 = 5 cm| 列宽 = 8em |

2. 指定列宽比例

   ```html
   <style>
   table th:first-of-type {
       width: 20%;
   }
   table th:nth-of-type(2) {
       width: 30%;
   }
   table th:nth-of-type(3) {
       width: 50%;
   }
   </style>
   
   | a | b | c |
   |---|---|---|
   | 列宽 = 20% 行宽| 列宽 = 30% 行宽 |列宽 = 60% 行宽 |
   ```

<head>
<style>
table th:first-of-type {
    width: 10%;
}
table th:nth-of-type(2) {
    width: 20%;
}
table th:nth-of-type(3) {
    width: 20%;
}
</style>
</head>

| a               | b               | c               |
| --------------- | --------------- | --------------- |
| 列宽 = 10% 行宽 | 列宽 = 30% 行宽 | 列宽 = 60% 行宽 |

