# 厦门大学本科毕业论文 LaTeX 模板

基于 XeLaTeX + ctex 的厦门大学本科毕业论文 LaTeX 模板，严格按照《厦门大学本科毕业论文（设计）规范》排版，支持 macOS / Linux / Windows 全平台编译。

> **PDF 效果预览**：[paper.pdf](paper.pdf)

## 目录结构

```
.
├── paper.tex              # 主文件（入口）
├── .latexmkrc             # latexmk 配置（XeLaTeX，产物输出到 build/）
├── styles/
│   ├── xmu.cls            # 厦大毕业论文文档类
│   └── gbt7714-2005.bst   # 参考文献格式（GB/T 7714-2005）
├── fonts/
│   ├── README.md          # 字体清单及获取说明
│   └── simsun.ttc         # 宋体字体文件
├── chapters/              # 各章节内容
│   ├── abstract.tex       # 中文摘要
│   ├── abstract_en.tex    # 英文摘要
│   ├── introduction.tex   # 引言
│   ├── method.tex         # 研究方法
│   ├── experiment.tex     # 实验与结果
│   ├── conclusion.tex     # 结论
│   └── acknowledgement.tex# 致谢
├── figures/               # 图片资源（含厦大 logo）
├── tables/                # 表格文件
├── references/
│   └── refs.bib           # 参考文献
└── build/                 # 编译产物（自动生成，不提交）
```

## 环境要求

- [TeX Live](https://tug.org/texlive/) 2022 或以上（推荐最新版）
- 编译引擎：**XeLaTeX**（必须）
- 构建工具：`latexmk`（TeX Live 已内置）

## 快速开始

### 1. 填写论文信息

打开 `paper.tex`，修改以下字段：

```latex
\title{论文中文标题}{Thesis English Title}
\author{姓名}
\idn{学号}
\college{学院}
\subject{专业}
\grade{20XX级}
\teacher{指导教师\; 职称}
\pubdate{二〇XX年X月}
\keywords{中文关键词}{English keywords}
```

### 2. 编译

```bash
# 编译（自动多次运行直到稳定）
latexmk paper.tex

# 清理编译产物
latexmk -C paper.tex
```

PDF 输出在 `build/paper.pdf`。

VSCode 用户：安装 **LaTeX Workshop** 插件，选择 **Recipe: latexmk (xelatex)** 编译。

## 写作说明

### 章节

在 `chapters/` 下对应文件中编写内容。使用 `\xmuchapter`、`\xmusection`、`\xmusubsection` 设置中英双语标题（用于中英文目录）：

```latex
\xmuchapter{引言}{Introduction}
\xmusection{研究背景}{Background}
\xmusubsection{问题描述}{Problem Statement}
```

### 插入图片

将图片放入 `figures/`，在正文中引用：

```latex
\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.8\linewidth]{example.png}
    \caption{图片标题}
    \label{fig:example}
\end{figure}
```

### 添加参考文献

在 `references/refs.bib` 中添加 BibTeX 条目，正文中使用 `\cite{key}` 引用，参考文献格式自动按 GB/T 7714-2005 排版。

### 论文选项

在 `paper.tex` 中取消对应注释以启用：

```latex
% \print          % 打印版（偶数页留白）
% \arabicchapter  % 章编号改为阿拉伯数字
% \design         % 封面改为"本科毕业设计"
% \minor          % 封面添加"（辅修）"
```

## 许可证

MIT License

