# Soil meta-analysis: what editors check, and how to satisfy it
# 土壤 Meta 分析：编辑部会查什么，以及怎么满足

**Attribution.** The requirements summarised here follow the editorial guidance *"How to avoid
desk-rejection: What editors look for in meta-analyses in soil studies"* published by **Geoderma**
(Elsevier). This page states those requirements **in our own words** and adds the operational
checks we found necessary when implementing them; it is **not** a reproduction or translation of
the editorial. Read the original before submitting — it is the authority, this is a working
checklist.

**署名。** 本页归纳的要求源自 **Geoderma**（Elsevier）发表的编辑部指引
*"How to avoid desk-rejection: What editors look for in meta-analyses in soil studies"*。
本页**用我们自己的话**陈述这些要求，并补充我们在落实过程中发现必须加上的操作性检查；**不是**原文的
转载或翻译。投稿前请阅读原文——原文才是依据，本页只是工作清单。

> Why this page exists: "not every study that compiles results from the literature is a true
> meta-analysis." Most desk rejections are not about the science being wrong — they are about a
> required item being absent from the manuscript. An absent item and a satisfied-but-unstated item
> look identical to an editor.
>
> 这一页存在的理由：**大多数被直接拒稿不是因为科学做错了，而是因为某个必报项在稿件里找不到。**
> 对编辑而言，"没做"和"做了但没写"长得一模一样。

---

## The six requirement groups / 六类要求

### 1. A systematic, transparent review

Report: a focused PECO question; the search string with synonyms; which databases; the date range;
any restrictions (language, publication type); inclusion and exclusion criteria; a PRISMA flow
diagram; how data were extracted (tables, figures, digitised); how missing values were handled; and
any conversions or assumptions (unit harmonisation, back-calculation).

**Soil-specific, and the one most often missed:** laboratory/incubation, glasshouse/controlled-
environment and field studies must be **distinguished**, because they are different experimental
contexts and are not interchangeable.

报告：聚焦的 PECO 问题；含同义词的检索式；检索了哪些数据库；时间范围；任何限制（语言、出版类型）；
纳入与排除标准；PRISMA 流程图；数据如何提取（表格、图形、数字化）；缺失值如何处理；任何单位统一或
反算的假设。**土壤领域特有、也最常被漏的一条：室内培养、温室/受控环境、田间试验必须区分开**，
它们是不同的实验情境，不可互换。

### 2. A proper meta-analytical framework

State **five things by name**: the effect size; how it was calculated; how its variance was
derived; how studies were weighted; and what model was fitted. Report 95% CIs. Quantify
heterogeneity (Cochran's *Q*, *I²*, *τ²*). Consider publication bias (funnel plot, Egger's test
where appropriate).

Common effect sizes: log response ratio, standardised mean difference (Hedges' *g*, Cohen's *d*),
odds/risk ratio where relevant, Fisher's *z*-transformed correlation.

**必须逐项写明五件事**：效应量；如何计算；方差如何得出；如何加权；拟合了什么模型。报告 95% CI。
量化异质性（*Q*、*I²*、*τ²*）。考虑发表偏倚（漏斗图、必要时 Egger 检验）。

### 3. Dose–response where relevant

For amendments or treatments applied at different rates: define the dose–response relationship
explicitly, quantify treatment levels comparably across studies, and analyse dose as a continuous
or categorical moderator (meta-regression or dose–response modelling).

改良剂等按不同用量施用的处理：明确界定剂量—效应关系，各研究间剂量要可比，并把剂量作为连续或
分类调节变量分析。

### 4. Appropriate handling of non-independence

Meta-analytic data are hierarchical. Multiple effect sizes commonly come from one paper,
experiment, site, soil depth, treatment comparison or timepoint. Account for that structure with
multilevel models or equivalent.

**Two named red lines:** do not inflate the sample by treating several treatments against one
shared control as independent, and do not include repeated measurements without adjustment.

Meta 数据是分层的。多个效应量常来自同一论文、试验、地点、土层、处理对比或时间点，分析必须考虑这一
结构（多层模型或等效方法）。**两条明确红线**：不得把"多处理 vs 一个共享对照"当作独立以虚增样本；
不得未经调整就纳入重复测量。

### 5. Caution with ML and SEM

Machine learning does not replace meta-analytical modelling. If used, explain how dependence
among observations, study-level clustering and sampling variance were handled — and treat it as
**exploratory, not inferential**. Standard SEM applied directly to effect sizes as if they were
independent, equally precise observations is generally inappropriate.

机器学习不能取代恰当的 Meta 建模；若使用，必须说明如何处理观测间依赖、研究层面聚类与抽样方差，
并视为**探索性而非推断性**。标准 SEM 直接套在效应量上（当作独立且等精度的观测）通常不合适。

### 6. The extracted database as supplementary material

The extracted database must be supplied, and must be complete enough for someone else to
reproduce the main calculations.

提取数据库必须作为补充材料提供，且完整到足以让他人重现主要计算。

---

## Operational checks we learned by implementing this
## 我们在落实过程中学到的操作性判断

These are **ours**, not the editorial's. Each one is a mistake that passes a naive reading of the
requirement and would still weaken or sink the manuscript.

以下是**我们自己的**经验，不属于原指引。每一条都能通过对要求的字面理解，却仍会削弱甚至拖垮稿件。

**An unmet requirement must be declared, never omitted.** If you cannot satisfy a row — the
experimental context was not recorded, say — write that into the Methods as a limitation. An
editor can accept a stated gap. A silent one reads as carelessness, and is indistinguishable from
not having thought about it.
**不满足的要求必须声明，不能省略。** 编辑能接受一个说明了的缺口；静默的缺口会被读成疏忽。

**A supplementary database needs both the raw and the derived numbers.** Raw values (mean, SD, *n*)
let a reader redo the calculation; the derived effect size and variance let them check they got
your answer. Either half alone is unverifiable.
**补充数据库要同时给原始值和派生值**——只给一半无法核验。

**A control arm has no effect size. Export it blank, not zero.** A 0 in that cell reads as a
measured null effect. This also applies to every "not measured" cell in a supplementary table.
**对照臂没有自己的效应量，导出要留空而不是 0**——0 会被读成实测的零效应。

**Blank means "not recorded" and must never default to the commonest value.** Filling an unknown
experimental context with "field" because most studies are field studies is exactly how a mixed
pool gets reported as a homogeneous one.
**空值就是"未记录"，绝不能默认成最常见的值**——那正是混池被报告成同质的途径。

**Quantify the cost of non-independence instead of mentioning it.** "Multiple effect sizes per
study" is a sentence an editor has read a thousand times. "47 effect sizes from 19 studies, so a
model assuming independence overstates the evidence by 28 degrees of freedom and narrows the
confidence interval" is a sentence that shows you understood the problem.
**把非独立性的代价量化，而不是提一句。** 写出"k 个效应量来自 n 项研究，假设独立会虚增 k−n 个
自由度并收窄置信区间"，比写"存在多个效应量"有说服力得多。

**Say "excluded" if you excluded, and never imply imputation you did not do.** A comparison
dropped for want of a dispersion measure was excluded, not imputed. Grouping drops by reason
("*n* because no SE or SD+n was reported") answers "how were missing values handled"; a bare count
does not.
**排除就说排除，绝不暗示做了没做的插补。** 按原因分组统计丢弃（"*n* 条因为未报告 SE 或 SD+n"）
才算回答了"缺失值如何处理"，一个裸计数不算。

**Check that the Methods describes the model you actually fitted.** If the sentence naming your
estimator is boilerplate, it will keep saying "DerSimonian–Laird" after you switch to REML.
Derive that sentence from the analysis, or re-read it every time the model changes.
**确认 Methods 描述的是你真正拟合的模型。** 如果那句话是模板，你换成 REML 之后它还会继续写
"DerSimonian–Laird"。

**Distinguishing experimental contexts is not only a column.** Recording the context is step one;
refusing to pool across contexts without saying so is step two. A single estimate spanning
incubation jars and field plots is not bad arithmetic — it is an unstated claim that the two
measure the same thing.
**区分实验情境不只是加一列。** 记录是第一步；**跨情境合并时必须说出来**是第二步——一个横跨培养瓶与
田间小区的数字不是算错了，而是在无声宣称两者测的是同一件事。

---

## Related in this repo / 本仓库相关内容

- `skills/meta-analysis-forge/` — effect sizes, models, heterogeneity, publication bias
- `skills/umbrella-review-skeptic/` — second-order synthesis and overlap
- `skills/evidence-synthesis-forge/` — protocol, search records, PRISMA
- `docs/method-sources.md` — where the statistical methods come from

Validation stance used throughout: every statistic is checked against an external authority
(`metafor`, `netmeta`, `clubSandwich`, `puniform`) rather than against our own expectations.

全程采用的验证立场：每个统计量都对照外部权威实现（`metafor`、`netmeta`、`clubSandwich`、
`puniform`）核验，而不是对照我们自己的预期。
