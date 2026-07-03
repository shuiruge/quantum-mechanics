# AGENTS.md — LLM 工作指南

## 约束优先级

- AGENTS.md 中的所有约束都是硬性要求，即使与工具能力或默认行为冲突。
- 如果认为某条约束有问题或过时，先向用户提出，获得明确许可后再修改或违反。
- 不确定时，遵守约束 + 提问，而不是不遵守约束 + 解释。

## 仓库架构

- `.tm` 文件是 TeXmacs 源文件，存放在仓库顶层目录。
- `.tex` 文件（`quantum.tex`、`manifold.tex`、`distribution.tex`）导出到 `LLM/` 中，用于独立编译。
- `LLM/` 是 LLM 工作目录，包含 Makefile、AGENTS.md、.tex 文件及构建产物。
- 构建产物（`.pdf .aux .log .out .toc`）被 `.gitignore` 忽略，不提交。

## 构建系统

- 在 `LLM/` 目录下运行 `make` 构建所有 PDF。
- `make clean` 删除构建产物。
- 双引擎：
  - `pdflatex`：编译 `quantum.tex`（英文）、`distribution.tex`（英文）
  - `xelatex + ctex`：编译 `manifold.tex`（中文）
- 典型工作流：编辑 .tex → `make` → 查看对应的 .pdf。

## 写作规范

- 虚数单位：`\mathi`（输出 $\mathi$）
- 微分符号：`\mathd`（输出 $\mathd$）
- 圆周率：`\mathpi`（输出 $\mathpi$）
- 赋值：`\assign`（输出 $:=$）
- 使用 `ctex` 宏包 + `xelatex` 编译（仅 `manifold.tex`）
- 定理环境中文标签：`axiom`→公理, `lemma`→引理, `definition`→定义, `remark`→注
- 公式用 `$...$`（行内）或 `$$...$$`（行间）

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

## 约束
- 在 chat 中只使用 `$...$` 表示行内公式，只能使用标准 LaTeX 代码，禁止使用行间公式（公式无法渲染）。
- 在 chat 中说中文。
- 除非用户明确指明，否则操作范围限定在 `LLM/` 目录内。
