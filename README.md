USTC-Lyx
========

Lyx template for USTC  thesis 

= 中国科学技术大学博士论文Lyx模板 =


目的
====

用Lyx实现xetex的中国科学技术大学论文模板，方便USTCer编辑学位论文。

使用
====
* 下载解压, 保持几个文件的相对路径不变即可。
* 在Main文档中编译可获得整篇Thesis；单独章节也可以单独编译。
* 创建新章节文件，请copy Introduction.lyx, 然后重命名。如果直接新建文档，需要按照Introduction.lyx的文档属性重新设置，采用拷贝重命名的方法可以避免这个问题。
* 更具体的介绍和使用技巧见模板中Introduction.yx 和 skill.lyx

Lyx介绍
====
Tex code和最终文档之间是没有可见关系的，人们输入tex代码时，并不能一开始就很有效率地编写代码，并保证其准确性。由于coding时可能由于细小的代码错误，编译获得的文档与所想要的文档有一定差别，因此获得一个文档往往需要反复调试，这极大影响了我们编写文档的效率。

为了解决代码输入的效率问题，不少文本编辑器上专门设计一些插件，例如vim 的latex-suit， Emacs 的AUCTex。 大家熟悉的Winedit和texstudio本质上也是对Tex 优化的编辑器，由于集成了一些工具、命令，在一定程度上提高了编写和编译文档的效率，但是这仍然不能解决需要多次编译文档的问题。

Tex 代码是基于文本的，代码对于机器来说是很Happy的，类似于硬件对汇编理解；对于人来说是有些糟糕，因为在编辑公式的时候，我们看到公式的最好是我们想到的图像，而不是几行糟糕的括号和斜杠。即使你的代码解析能力再强悍，不得否认还是直接看到公式的图像好。Emacs 的AUCTex 实现了这个功能，它的原理就是将一些公式部分在后台用tex编译，然后显示到显示器上，我们在公式的位置看到的就是一目了然的公式图像了！

如果将编辑问题和现实问题同时解决，那使用Tex就方便而完美了。Lyx 就是基于这个目的实现的。 官网上直接标致它是“可见即可想”WYSIWYM （What You See Is What You Mean）。 对于Tex 其实就是加了一个表现层的编辑器， 如同 AUCTex。 但是功能要多一些，不限于Tex 系统， 内部还配置好了一些转换器，实现例如HTML，xhtml的格式的转换。 另外公式的实时显示也不像AUCTex经过编译，形成图像；而是在编辑器中直接实现的，所以编辑公式时比较顺畅。

习惯Tex系统的人，往往会对所有可见即可得排版系统（例如Word）嗤之以鼻。往往看到Lyx时也带这么个偏见。实际上Lyx就是一个Tex编辑器，因为你可以在文档的任何地方直接插入Tex代码，这和scientificworkplace 一样。 如果使用文本编辑器打开Lyx文件，看到保存的文本，与tex相似，但也加了一些东西。添加的东西就是让tex代码在Lyx当中如何显示的（不代表编译出来的pdf如何显示）。为了更好的定义元素的现实方式，可以专门写一个layout文件，这个文件的作用相当于web网页中css文件的作用。

实现
====
* 底层模板USTCthesis.cls直接设置ctex获得，因此模板兼容ctex命令。
* 在USTCthesis.layout中设置了Lyx与latex命令的对应关系