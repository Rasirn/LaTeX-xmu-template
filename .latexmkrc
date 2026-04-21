# .latexmkrc — latexmk 编译配置
# 适用于 VSCode LaTeX Workshop（Recipe: latexmk (xelatex)）及命令行 latexmk

# ── 编译引擎：xelatex ────────────────────────────────────────────
$pdf_mode = 5;   # 5 = xelatex → xdv → pdf

# ── 编译产物输出到 build/ 目录 ───────────────────────────────────
$out_dir = 'build';
$aux_dir = 'build';   # 辅助文件也全部放在 build/

# ── 启用 synctex（支持 PDF 与源码双向跳转）──────────────────────
$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode %O %S';
