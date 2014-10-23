
% Ref 1:
% \begin{verbatim}
% 参考科学出版社编写的《著译编辑手册》(1994年)
% 七号       5.25pt       1.845mm
% 六号       7.875pt      2.768mm
% 小五       9pt          3.163mm
% 五号      10.5pt        3.69mm
% 小四      12pt          4.2175mm
% 四号      13.75pt       4.83mm
% 三号      15.75pt       5.53mm
% 二号      21pt          7.38mm
% 一号      27.5pt        9.48mm
% 小初      36pt         12.65mm
% 初号      42pt         14.76mm
%
% 这里的 pt 对应的是 1/72.27 inch，也就是 TeX 中的标准 pt
% \end{verbatim}
%
% Ref 2:
% WORD 中的字号对应该关系如下:
% \begin{verbatim}
% 初号 = 42bp = 14.82mm = 42.1575pt
% 小初 = 36bp = 12.70mm = 36.135 pt
% 一号 = 26bp = 9.17mm = 26.0975pt
% 小一 = 24bp = 8.47mm = 24.09pt
% 二号 = 22bp = 7.76mm = 22.0825pt
% 小二 = 18bp = 6.35mm = 18.0675pt
% 三号 = 16bp = 5.64mm = 16.06pt
% 小三 = 15bp = 5.29mm = 15.05625pt
% 四号 = 14bp = 4.94mm = 14.0525pt
% 小四 = 12bp = 4.23mm = 12.045pt
% 五号 = 10.5bp = 3.70mm = 10.59375pt
% 小五 = 9bp = 3.18mm = 9.03375pt
% 六号 = 7.5bp = 2.56mm
% 小六 = 6.5bp = 2.29mm
% 七号 = 5.5bp = 1.94mm
% 八号 = 5bp = 1.76mm
%
% 1bp = 72.27/72 pt


\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{USTCthesis}[2011/01/01 USTCthesis document class]

\newif\ifustc@master\ustc@masterfalse
\newif\ifustc@doctor\ustc@doctorfalse
\newif\ifustc@adobefont\ustc@adobefontfalse
\DeclareOption{master}{\ustc@mastertrue}
\DeclareOption{doctor}{\ustc@doctortrue}
\DeclareOption{adobefont}{\ustc@adobefonttrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions

\LoadClass[cs4size,a4paper,fancyhdr,fntef]{ctexbook} 
%ctex 的cs4size选项使大部分字体和间接设置好。默认行距为对应字体的单被行距
%normalsize小四12pb，small为5号10.5bp，脚注9bp
%两行间距和word的基本相同，测量差别小于5%

\ifustc@master\relax\else
\ifustc@doctor\relax\else
\ClassError{USTCthesis}%
{You have to specify one of thesis options: master or doctor.}{}
\fi
\fi

\ifustc@adobefont
	\setCJKmainfont[BoldFont={Adobe Heiti Std}, ItalicFont={Adobe Kaiti Std}]{Adobe Song Std}
	\setCJKsansfont{Adobe Heiti Std}
	\setCJKmonofont{Adobe Fangsong Std}

	\setCJKfamilyfont{song}{Adobe Song Std}
	\setCJKfamilyfont{hei}{Adobe Heiti Std}
	\setCJKfamilyfont{kai}{Adobe Kaiti Std}
	\setCJKfamilyfont{fs}{Adobe Fangsong Std}
	\setCJKfamilyfont{verthei}[RawFeature={vertical:}]{Adobe Heiti Std}%{Adobe Heiti Std} 这里还是改成Adobe Heiti Std吧，在Linux下面SimHei貌似不行，改成这个就好了
\else
	\setCJKmainfont[BoldFont={SimHei}, ItalicFont={KaiTi}]{NSimSun}
	\setCJKsansfont{SimHei}
	\setCJKmonofont{FangSong}

	\setCJKfamilyfont{song}{NSimSun}
	\setCJKfamilyfont{hei}{SimHei}
	\setCJKfamilyfont{kai}{KaiTi}   % XP对应 KaiTi_GB2312，Vista对应KaiTi，注意根据系统切换
	\setCJKfamilyfont{fs}{FangSong} % XP对应 FangSong_GB2312，Vista对应FangSong，注意根据系统切换
	\setCJKfamilyfont{verthei}[RawFeature={vertical:}]{SimHei}%{Adobe Heiti Std}
\fi

\newcommand{\song}{\CJKfamily{song}}    % 宋体
\newcommand{\fs}{\CJKfamily{fs}}        % 仿宋体
\newcommand{\kai}{\CJKfamily{kai}}      % 楷体
\newcommand{\hei}{\CJKfamily{hei}}      % 黑体
\newcommand{\verthei}{\CJKfamily{verthei}}

\setmainfont{Times New Roman}
\setsansfont[BoldFont={Arial:style=Bold}]{Arial}
\setmonofont[BoldFont={Courier New Bold}]{Courier New}

\RequirePackage{prettyref}
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
\RequirePackage[lined,boxed,linesnumbered,algochapter]{algorithm2e}
\RequirePackage{graphicx,psfrag}

\RequirePackage{setspace}
\RequirePackage[
    font={small,onehalfspacing},
    labelfont=bf,
    labelsep=quad,
    %format=hang,
    %width=.8\textwidth,
    margin={4ex,4ex},
    oneside]{caption} %设置图注表注

\RequirePackage{titlesec,titletoc}
\RequirePackage[left=3.17cm,right=3.17cm,top=2.54cm,bottom=3.14cm]{geometry} %left=3.17cm,right=3.17cm,top=2.54cm,bottom=2.54cm
\RequirePackage{enumerate}
\RequirePackage{array,multirow}
\RequirePackage{subfig,epsfig}
\RequirePackage{float}
\RequirePackage{paralist}
\RequirePackage{booktabs}
\RequirePackage[perpage,symbol]{footmisc}
\RequirePackage{pifont}
\RequirePackage[absolute]{textpos}
\RequirePackage[numbers,sort&compress,square]{natbib}
\RequirePackage[ocgcolorlinks]{hyperref}

\hypersetup
{
    CJKbookmarks=true,
    bookmarksnumbered=true,
    bookmarksopen=true,
    breaklinks=true,
    colorlinks=true,
    linkcolor=blue,
    citecolor=blue,
    plainpages=false,
    pdfstartview=FitH
}


%\renewcommand\baselinestretch{1.4}
%XeTex中文断行
\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt

%titleformat
\setcounter{secnumdepth}{3}
\CTEXsetup[
    number={\arabic{chapter}},
    format={\centering},
    nameformat={\heiti\fontsize{16bp}{16bp}\linespread{1}\selectfont\bfseries},
    titleformat={\heiti\fontsize{16bp}{16bp}\linespread{1}\selectfont\bfseries},
    beforeskip={14bp},
    afterskip={42bp} % 与节的skip重叠时选较大的skip，章标题段后18pt+节标题24pt
]{chapter}

\CTEXsetup[
    format={\flushleft\heiti\fontsize{14bp}{14bp}\linespread{1}\selectfont},
    aftername={\quad},
    beforeskip={24bp},
    afterskip={6bp}
]{section}

\CTEXsetup[
    format={\flushleft\heiti\fontsize{13bp}{13bp}\linespread{1}\selectfont},
    aftername={\quad},
    beforeskip={12bp},
    afterskip={6bp}
]{subsection}

\CTEXsetup[
    format={\flushleft\heiti\fontsize{12bp}{12bp}\linespread{1}\selectfont},
    aftername={\quad},
    beforeskip={10bp},
    afterskip={6bp}
]{subsubsection}

%% tableofcontent
\titlecontents{chapter}[0em]
{\vspace{6bp}\zihao{4}} 
{\thecontentslabel\hspace*{0.5em}}
{}
{\zihao{-4}\titlerule*[0.5pc]{$\cdot$}\contentspage}
%四号字体为14磅（14bp），只设置标题，不设置页码，页码仍然是小四
\titlecontents{section}[1.1\ccwd]
{\vspace{6bp}\zihao{-4}}
{\thecontentslabel\hspace*{0.5em}}
{}
{\titlerule*[0.5pc]{$\cdot$}\contentspage}

\titlecontents{subsection}[2.3\ccwd]
{\vspace{6bp}\zihao{-4}}
{\zihao{5}\thecontentslabel\hspace*{0.5em}}
{}
{\titlerule*[0.5pc]{$\cdot$}\contentspage}




\newcommand\ustc@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\setlength{\parskip}{0pt plus3pt minus0pt}%{1ex plus1.5ex minus0.5ex}%{0.5\baselineskip}%{1.5pt plus1pt minus1pt}

\def\cleardoublepage
{
    \clearpage
    \if@twoside 
        \ifodd\c@page
        \else
            \thispagestyle{empty}%
            \hbox{}\newpage
            \if@twocolumn\hbox{}\newpage
            \fi
        \fi
    \fi
}

\renewcommand{\floatpagefraction}{0.80}
\newcommand\USTCTspace{\protect\CTEX@spaceChar}

\def\ustc@define@term#1{
    \expandafter\gdef\csname #1\endcsname##1{%
        \expandafter\gdef\csname ustc@#1\endcsname{##1}}
    \csname #1\endcsname{}}

\ustc@define@term{depart}
\ustc@define@term{degree}
\renewcommand\title[1]{\def\ustc@title{#1}}
\renewcommand\author[1]{\def\ustc@author{#1}}
\ustc@define@term{advisor}
\ustc@define@term{coadvisor}
\ustc@define@term{major}
\ustc@define@term{submitdate}

\renewcommand\maketitle{%
    \pdfbookmark[0]{\ustc@title}{title}
    \cleardoublepage
    \thispagestyle{empty}
    \setlength{\TPHorizModule}{1mm}
    \setlength{\TPVertModule}{1mm}

    \begin{textblock}{150}[0.5,0](105,49)
        \begin{center}
            \includegraphics[scale=1]{ustc_logo_text.eps}
        \end{center}
    \end{textblock}

     \begin{textblock}{150}[0.5,0.5](105,85)
        \begin{center}
        \ifustc@doctor
            \heiti\fontsize{56}{67.2}\selectfont {博士学位论文}
        \else
            \heiti\fontsize{56}{67.2}\selectfont {硕士学位论文}
         \fi
        \end{center}
    \end{textblock}
   
    \begin{textblock}{150}[0.5,0.5](105,135)
        \begin{center}
        \includegraphics[width=4.52cm,height=4.52cm]{ustc_logo_fig.eps}
        \end{center}
    \end{textblock}
      
    \begin{textblock}{110}[0.5,0.387](105,183)
        \begin{center}
            \fontsize{26}{32}\selectfont\heiti\bfseries{\ustc@title}\par
        \end{center}
    \end{textblock}

    \begin{textblock}{120}[0.5,1](105,260)
    \begin{center}
        { \fontsize{16}{21.5}\selectfont
        \begin{tabular}[b]{l>{\centering}p{8.7cm}}
            \heiti{作者姓名：} & \ustc@author \tabularnewline
            \heiti{学科专业：} & \ustc@major \tabularnewline
            \heiti{导师姓名：} & \ustc@advisor \tabularnewline
            \heiti{完成时间：} & \ustc@submitdate
        \end{tabular}}
    \end{center}
    \end{textblock}
    \null
    \clearpage
    \if@twoside
        \thispagestyle{empty}
        \cleardoublepage
    \fi
}

\ustc@define@term{etitle}
\ustc@define@term{eauthor}
\ustc@define@term{eadvisor}
\ustc@define@term{ecoadvisor}
\ustc@define@term{esubmitdate}
\ustc@define@term{emajor}

\newcommand\makeetitle{%
    %\pdfbookmark{英文标题}{etitle}
    \cleardoublepage
    \thispagestyle{empty}
    \setlength{\TPHorizModule}{1mm}
    \setlength{\TPVertModule}{1mm}

    \begin{textblock}{150}[0.5,0](105,47.5)
        \begin{center}
         \fontsize{20}{30}\selectfont\textsf{University of Science and Technology of China}
        \end{center}
    \end{textblock}

    \begin{textblock}{150}[0.5,0](105,56.5)
        \begin{center}
        \ifustc@doctor
            \fontsize{26}{30}\selectfont\textsf{A dissertation for doctor degree}
        \else
            \fontsize{26}{30}\selectfont\textsf{A dissertation for master degree}
        \fi
        \end{center}
    \end{textblock}

    \begin{textblock}{150}[0.5,0](105,88)
        \begin{center}
        \includegraphics[width=4.52cm,height=4.52cm]{ustc_logo_fig.eps}
        \end{center}
    \end{textblock}

    \begin{textblock}{140}[0.5,0.613](105,173)
        \begin{center}
            \fontsize{26}{30}\selectfont\bfseries\textsf{\ustc@etitle}\par
        \end{center}
    \end{textblock}

    \begin{textblock}{120}[0.5,1](104,260)
        \begin{center}
        { \fontsize{16pt}{21.5pt}\selectfont
        \begin{tabular}[b]{l>{\centering}p{8.1cm}}
            Author's Name :&    \ustc@eauthor \tabularnewline
            Speciality :&       \ustc@emajor \tabularnewline
            Supervisor :&       \ustc@eadvisor \tabularnewline
            Finished Time :&    \ustc@esubmitdate
        \end{tabular}}
        \end{center}
    \end{textblock}
    \null
    \clearpage
    \if@twoside
        \thispagestyle{empty}
        \cleardoublepage
    \fi
}


\newcommand\makebookspine[1]{
    %\pdfbookmark{书\hspace{1em}脊}{bookmark}
    \cleardoublepage
        \thispagestyle{empty}
    \begin{center}
    \rotatebox{-90}{
        \framebox[0.97\textheight][c]{\ziju{0.17}\verthei\zihao{-4}
        \raisebox{10pt}{
            {#1}
            \hspace*{20pt}  \ustc@depart \hspace*{20pt}
            \ustc@author \hspace*{30pt}{中国科学技术大学} }}
    }
    \end{center}
    \clearpage
        \if@twoside
        \thispagestyle{empty}
    \cleardoublepage
        \fi
}

%% 定义页眉横线
\newcommand{\makeheadrule}{%
    %\rule[.7\baselineskip]{\headwidth}{1.2pt}\vskip-0.97\baselineskip%
     \rule[.5\baselineskip]{\headwidth}{0.75pt}}%

%\makeatletter
\renewcommand{\headrule}{%
    {\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi}%
    \makeheadrule}
%\makeatother

\newcommand{\ustc@declaretext}{%
    本人声明所呈交的学位论文,是本人在导师指导下进行研究工作所取得的成果。
    除已特别加以标注和致谢的地方外，论文中不包含任何他人已经发表或撰写过
    的研究成果。与我一同工作的同志对本研究所做的贡献均已在论文中作了明确的说明。
}

\newcommand{\ustc@authorization}{%
    作为申请学位的条件之一，学位论文著作权拥有者授权中国科学技术大学拥有
    学位论文的部分使用权，即：学校有权按有关规定向国家有关部门或机构送交
    论文的复印件和电子版，允许论文被查阅和借阅，可以将学位论文编入《中国
    学位论文全文数据库》等有关数据库进行检索，可以采用影印、缩印或扫描等
    复制手段保存、汇编学位论文。本人提交的电子文档的内容和纸质论文的内容
    相一致。

    保密的学位论文在解密后也遵守此规定。
}

\def\ustc@secret@newtitle{□\ 公开\hspace{0.5cm}□\ 保密\ \ustc@underline[4em]\relax\hspace{0.1em}年}

\newcommand\makeauthorization{%
    % \pdfbookmark{原创与授权声明}{authorization}
    \cleardoublepage
    \thispagestyle{empty}
    \begin{center}\zihao{3}\heiti{中国科学技术大学学位论文原创性声明}\end{center}
    \par\ustc@declaretext\par
    \vskip 1.0cm
    {\begin{tabular}{p{6cm}p{6cm}}
        作者签名：\ustc@underline{} & 签字日期：\ustc@underline{}
     \end{tabular}}
     \vskip2.0cm
     \begin{center}\zihao{3}\heiti{中国科学技术大学学位论文授权使用声明}\end{center}
     \par\ustc@authorization\par
     \vskip0.5cm
     \ustc@secret@newtitle\par
     \vskip1.0cm
     {\renewcommand{\arraystretch}{2.0}%行高
             \begin{tabular}{p{6cm}p{6cm}}
                 作者签名：\ustc@underline{} & 导师签名：\ustc@underline{}\\
                 签字日期：\ustc@underline{} & 签字日期：\ustc@underline{}
             \end{tabular}}
     \clearpage
     \if@twoside
        \thispagestyle{empty}
        \cleardoublepage
     \fi
}

\fancypagestyle{plain}{}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\small \leftmark}

\renewcommand{\headrulewidth}{0.75pt}

\renewcommand\frontmatter{%
    \cleardoublepage
    \@mainmatterfalse
    \pagenumbering{Roman}
    \fancyfoot{}
    \fancyfoot[C]{\small \thepage}
}

\renewcommand\mainmatter{%
    \cleardoublepage
    \@mainmattertrue
    \pagenumbering{arabic}
    \fancyfoot{}
    \fancyfoot[RO,LE]{\small \thepage} %页面编号方式
}

\newenvironment{abstract}
{\chapter{摘\hspace{1em}要}}
{}
\newcommand\keywords[1]{%
    \vspace{3.5ex}\noindent{\heiti 关键词：} #1}

\newenvironment{eabstract}
{
    \chapter{\bf\textsf{ABSTRACT}}
    \markboth{Abstract}{Abstract}
}
{ }

\newcommand\ekeywords[1]{%
    \vspace{3.5ex}\noindent{\bfseries {Keywords:~}} #1}

    %tableofcontents
\renewcommand{\contentsname}{目\hspace{1em}录}
\renewcommand\tableofcontents{%
        \if@twocolumn
            \@restonecoltrue\onecolumn
            \else
            \@restonecolfalse
            \fi
            \chapter{\contentsname}%
            \renewcommand{\baselinestretch}{1}
        \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
            \@starttoc{toc}%
            \if@restonecol\twocolumn\fi
}


\renewcommand{\bibsection}{
    \chapter*{\bibname}
    \markboth{参考文献}{参考文献}
    \addcontentsline{toc}{chapter}{参考文献}
    \fontsize{10.5pt}{20pt}\selectfont
    \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}
    \setlength{\bibsep}{0ex}
}

\renewenvironment{thanks}
{
    \chapter*{致$\quad$谢}
    \addcontentsline{toc}{chapter}{致谢}  
    \markboth{致$\quad$谢}{致$\quad$谢}
}
{}

\newenvironment{denotation}[1][2.5cm]{
    \chapter{主要符号对照表} % no tocline
        \noindent\begin{list}{}%
        {\vskip-30bp
            \renewcommand\makelabel[1]{##1\hfil}
            \setlength{\labelwidth}{#1} % 标签盒子宽度
            \setlength{\labelsep}{0.5cm} % 标签与列表文本距离
            \setlength{\itemindent}{0cm} % 标签缩进量
            \setlength{\leftmargin}{\labelwidth+\labelsep} % 左边界
            \setlength{\rightmargin}{0cm}
            \setlength{\parsep}{0cm} % 段落间距
            \setlength{\itemsep}{0cm} % 标签间距
            \setlength{\listparindent}{0cm} % 段落缩进量
            \setlength{\topsep}{0pt} % 标签与上文的间距
        }}
    {\end{list}
}


%%图、表的格式化引用
\newrefformat{fig}{\hyperref[#1]{图\ref*{#1}\,}}
\newrefformat{eq}{\hyperref[#1]{式\ref*{#1}\,}}
\newrefformat{tab}{\hyperref[#1]{表\ref*{#1}\,}}

%%listings设置
\usepackage{listings}
\usepackage{xcolor}
\lstset{
  tabsize=4, %
  frame=shadowbox, %把代码用带有阴影的框圈起来
  commentstyle=\color{red!50!green!50!blue!50},%浅灰色的注释
  rulesepcolor=\color{red!20!green!20!blue!20},%代码块边框为淡青色
  keywordstyle=\color{blue!90}\bfseries, %代码关键字的颜色为蓝色，粗体
  showstringspaces=false,%不显示代码字符串中间的空格标记
  stringstyle=\ttfamily, % 代码字符串的特殊格式
  keepspaces=true, %
  breakindent=22pt, %
  basicstyle=\footnotesize, %
  showspaces=false, %
  flexiblecolumns=true, %
  breaklines=true,%对过长的代码自动换行
  breakautoindent=true,%
  breakindent=4em,%
  texcl=true,
  aboveskip=1em %代码块边框
}

\endinput
%%
%% End of file `USTCthesis.cls'.
