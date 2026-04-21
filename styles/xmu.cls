\ProvidesClass{styles/xmu}[XMU Undergraduates Thesis Template]


\PassOptionsToPackage{AutoFakeBold}{xeCJK}
\LoadClass{ctexbook}

%%%%%%%% 宏包 %%%%%%%%

% 页面尺寸
\RequirePackage[a4paper,top=2.54cm,bottom=2.54cm,left=3.17cm,right=3.17cm,head=1.57cm,foot=1.5cm]{geometry}
% 自定义页眉页脚
\RequirePackage{fancyhdr}
% 自定义章节标题
\RequirePackage{titlesec}
\RequirePackage{titletoc}
% 首行缩进
\RequirePackage{indentfirst}
% 插图
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{etoolbox}
% 表格线
\RequirePackage{booktabs}
% 数学公式
\RequirePackage{array}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathptmx}
\RequirePackage{bm}
% 绘图
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.18}
% 算法
\RequirePackage[ruled]{algorithm2e}
% 自定义脚注
\RequirePackage{scrextend}
% 自定义参考文献
\RequirePackage[square,super,comma,sort,compress]{natbib}
% 引用、超链接
\RequirePackage[colorlinks,citecolor=black,linkcolor=black,urlcolor=black,bookmarksnumbered=true,bookmarksopen=true]{hyperref}
% 条件编译
\RequirePackage{ifthen}

%%%%%%%% 用户自定义变量 %%%%%%%%

\newcommand{\print}{\def\xmu@print{true}}                               % 电子版 / 打印版
\newcommand{\design}{\def\xmu@design{true}}                             % 毕业设计 / 毕业论文
\newcommand{\minor}{\def\xmu@minor{true}}                               % 主修 / 辅修
\newcommand{\arabicchapter}{\def\xmu@arabicchapter{true}}               % 章节使用阿拉伯数字编号
\renewcommand{\title}[2]{\def\xmu@title{#1}\def\xmu@entitle{#2}}        % 标题
\renewcommand{\author}[1]{\def\xmu@author{#1}}                          % 作者
\newcommand{\idn}[1]{\def\xmu@idn{#1}}                                  % 学号
\newcommand{\college}[1]{\def\xmu@college{#1}}                          % 学院
\newcommand{\subject}[1]{\def\xmu@subject{#1}}                          % 专业
\newcommand{\grade}[1]{\def\xmu@grade{#1}}                              % 年级
\newcommand{\teacher}[1]{\def\xmu@teacher{#1}}                          % 指导教师
\newcommand{\otherteacher}[1]{\def\xmu@otherteacher{#1}}                % 校外指导教师
\newcommand{\pubdate}[1]{\def\xmu@pubdate{#1}}                          % 日期
\newcommand{\keywords}[2]{\def\xmu@keywords{#1}\def\xmu@enkeywords{#2}} % 关键字

%%%%%%%% 字体、段落 %%%%%%%%
% 字体文件统一放在项目根目录下的 fonts/ 目录中。
% 若 fonts/simhei.ttf 存在，使用 Windows 字体（全平台效果一致）；
% 否则回退到系统字体（macOS: Heiti SC / Kaiti SC，Linux: 需自行安装）。

% 宋体：使用 fonts/simsun.ttc（Path= 选项指定子目录，字族名保持干净）
\setCJKfamilyfont{simsun}[Path=fonts/]{simsun.ttc}
\renewcommand{\songti}{\CJKfamily{simsun}}

% 英文默认字体
\setmainfont{Times New Roman}
\setsansfont{Arial}

% 根据 fonts/simhei.ttf 是否存在决定字体来源
\IfFileExists{fonts/simhei.ttf}{
    % ── Windows 字体（推荐，全平台效果一致） ─────────────────
    \setCJKfamilyfont{simhei}[Path=fonts/]{simhei.ttf}
    \setCJKfamilyfont{simkai}[Path=fonts/]{simkai.ttf}
    \renewcommand{\heiti}{\CJKfamily{simhei}}
    \renewcommand{\kaishu}{\CJKfamily{simkai}}
    \setCJKmainfont[Path=fonts/,
                    BoldFont={simhei.ttf},
                    ItalicFont={simkai.ttf}]{simsun.ttc}
    \setCJKsansfont[Path=fonts/]{simhei.ttf}
}{
    % ── 系统字体回退（macOS: Heiti SC / Kaiti SC）────────────
    % \heiti / \kaishu 由 ctex 自动绑定系统黑体/楷体，宋体加粗用 AutoFakeBold
    \setCJKmainfont[Path=fonts/, AutoFakeBold=2]{simsun.ttc}
}

% 字体效果说明（两种分支一致）：
% \songti / \rm：中文宋体，英文 Times New Roman
% \heiti  / \sf：中文黑体，英文 Arial
% \kaishu / \it：中文楷体
% \bf\songti：中文宋体加粗（Windows 分支使用黑体，macOS 分支用 AutoFakeBold）

% 数学加粗斜体
\DeclareMathAlphabet{\mathbfit}{T1}{ptm}{b}{it}
\renewcommand{\boldsymbol}[1]{\mathbfit{#1}}
% URL 字体
\urlstyle{same}
% 默认行距
\renewcommand{\baselinestretch}{1.5}
\input{styles/xmu-layout}
\input{styles/xmu-float}
\input{styles/xmu-envs}

\endinput
