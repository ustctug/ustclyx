USTC-Lyx
========

Lyx template for USTC  thesis 

# 中国科学技术大学学位论文Lyx模板 #


## 目的 ##


中国科学技术大学学位论文Lyx模板，方便USTCer编辑学位论文。包含博士、硕士、学士模版。

## 下载 ##

* 本项目使用了ustcthesis项目，作为一个git子模块。克隆或者下载时，注意确认ustcthesis中所有文件都下载了，并保持文件夹名和相对路径。

  可以使用git clone --recursive，将所有文件都下载下来：

  ````bash
  git clone --recursive https://github.com/jmcui/USTC-Lyx.git
  ````

## 使用 ##

* 在Main文档中编译可获得整篇Thesis；单独章节也可以单独编译。
* 创建新章节文件，请copy Introduction.lyx, 然后重命名。如果直接新建文档，需要按照Introduction.lyx的文档属性重新设置，采用拷贝重命名的方法可以避免这个问题。
* 更具体的介绍和使用技巧见模板中Introduction.yx 和 skill.lyx
* Lyx 版本要求 >= 2.3



## LyX 优点： 

1. 可视化地编辑Tex
2. 与latex一样，可以结构化包含文档。并且编辑器提供的目录、导航、标签等功能，可以快速方便地定位、显示内容。编撰比较大的工程，例如书籍类工程， 这个功能会很重要
3. 存在与word类似的修订模式，方便多人编辑
4. 方便的自动编译过程，只需要一次按键即可
5. 内部许多文件转换器，支持较多的文件格式
6. 与其他工具有很好的接口（Jabref， Inkscape，Zotero）

　　. . . . . 

主要前两点，引入latex优点的同时，克服编辑文本不友好、不直观问题。避免反复编译文档，因此可以极大提高撰写论文的效率。设计本论文模版的目的就是为了方便广大USTCer攥写学位论文。

## 模版原理

本Lyx模版的latex使用ustcthesis模版，[github链接](https://github.com/ustctug/ustcthesis)。感谢众多USTCer的努力，这个模版已经是研究生院认可的学位论文模版[学位论文模版](https://gradschool.ustc.edu.cn/ylb/xw.html)。本模版主要在ustcthesis模版上加了一个Lyx layout层 (USTCtheisis.layout文件)，在此基础上定义了一些常用的命令，以方便编辑文档。
