# AGENTS.md — LLM 工作指南

## 项目概览

`/home/shuiruge/Codes/quantum-mechanics/LLM/` 目录包含两个 LaTeX 文档：

| 文件 | 内容 | 编译器 |
|---|---|---|
| `quantum.tex` | 《从零构建量子力学》— 从公理推导薛定谔方程、路径积分等 | `pdflatex` |
| `manifold.tex` | 《一般流形上的路径积分》— 将路径积分推广到 Riemann 流形 | `xelatex` |

## 编译

```bash
make          # 编译所有 PDF
make quantum.pdf   # 仅编译 quantum.tex
make manifold.pdf  # 仅编译 manifold.tex
make clean    # 清理构建产物
```

- `quantum.tex` 用 `pdflatex`，`manifold.tex` 用 `xelatex`（支持中文）。
- 每次编译需要运行两次 LaTeX 以解析交叉引用。

## 写作规范

### 数学符号（与 quantum.tex 保持一致）

- 虚数单位：`\mathi`（输出 $\mathi$）
- 微分符号：`\mathd`（输出 $\mathd$）
- 圆周率：`\mathpi`（输出 $\mathpi$）
- 赋值：`\assign`（输出 $:=$）

### manifold.tex（中文文档）

- 使用 `ctex` 宏包 + `xelatex` 编译
- 数学符号宏与 quantum.tex 一致
- 定理环境中文标签：`axiom`→公理, `lemma`→引理, `definition`→定义, `remark`→注
- 公式用 `$...$`（行内）或 `$$...$$`/`\[...\]`（行间）

### 一般原则

- 定义新概念时优先使用 `\begin{definition}...\end{definition}`
- 重要方程用 `\begin{equation}...\end{equation}` 加 `\label{...}`
- 交叉引用用 `\ref{...}`
- 注释或待办事项用 `%` 或写在 `\todo{...}` 中

## 典型工作流

1. 阅读现有 `.tex` 文件了解上下文和符号约定
2. 编辑 `.tex` 文件（`write` 或 `edit` 工具）
3. 运行 `make` 编译验证无错误
4. 检查 PDF 输出确认格式正确
