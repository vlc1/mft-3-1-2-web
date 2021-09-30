---
title: Changement de phase
date: MFT-3-1-2 2021/2022
author: Vincent Le Chenadec
header-includes:
- \usepackage{siunitx}
- \usepackage{amsmath}
- \usepackage{stmaryrd}
- \graphicspath{{../images/}}
...

# Règle de Gibbs

* Deux propriétés intensives suffisent à caractériser l'état d'une substance pure homogène
* Cependant, quand deux phases de cette même substance pure sont à l'équilibre (système hétérogène), un seul paramètre suffit
* Par exemple, l'équilibre d'un système comprenant de l'eau sous ses formes liquide et vapeur à la pression atmosphérique ($\SI{101325}{\pascal}$) n'est possible que lorsque sa température vaut $\SI{100}{\celsius}$
* Il n'y a donc dans ce cas qu'une seule variable indépendante

---

* Dans un système hétérogène à l'équilibre, le nombre de variables indépendantes nécessaires à la caractérisation de son état **intensif** est appelé la **variance**, notée ici $\mathcal{V}$
* La variance est déterminée par la règle des phases de Gibbs
$$
\mathcal{V} = N + 2 - \varphi
$$
où

	- $N$ dénote le nombre de substances présentes
	- $\varphi$ le nombre de phases

($2$ représente l'équilibre mécanique et l'équilibre thermique)

---

## Applications

Calculer $\mathcal{V}$

* Point triple d'une substance pure
* Courbe de vapeur saturante d'une substance pure
* Eau liquide à l'équilibre avec un mélange de vapeur d'eau et de diazote
une vapeur 

---

## Démonstration

* La pression, la température et les fractions molaires de chaque phase suffisent caractérisent l'état intensif du système, soit
$$
X = 2 + N \times \varphi
$$
* L'équilibre chimique quant à lui impose que le potentiel chimique de chaque constituant est le même dans chaque phase
\begin{multline*}
\forall \alpha \in \left \llbracket 2, \varphi \right \rrbracket, \quad \forall i \in \left \llbracket 1, N \right \rrbracket, \\
\mu _ i ^ \alpha \left ( T, P, \mathbf{x} ^ \alpha \right ) = \mu _ i ^ \beta \left ( T, P, \mathbf{x} ^ \beta \right ), \quad \beta = \alpha - 1
\end{multline*}
soient $Y = N \times \left ( \varphi - 1 \right )$ relations supplémentaires
* De plus,
$$
\forall \alpha \in \left \llbracket 1, \varphi \right \rrbracket, \quad \sum _ i x _ i ^ \alpha = 1
$$
soient $Z = \varphi$ relations supplémentaires

---

* On en déduit
$$
\begin{aligned}
\mathcal{V} & = X - Y - Z, \\
& = 2 + N - \varphi
\end{aligned}
$$

---

## Extension : équilibres chimiques

* La prise en compte de réactions entre les espèces

	- D'une même phase (réactions **homogènes**)
	- De phases différentes (réactions **hétérogènes**)

induit des équilibres supplémentaires
* Ces équilibres se traduisent par l'annulation de l'affinité de la réaction
$$
\mathcal{A} = -\sum _ {i, \alpha} \nu _ i ^ \alpha \mu _ i ^ \alpha
$$
* Soit $r$ le nombre d'équilibres chimiques **indépendants**, alors la règle de Gibbs s'écrit
$$
\mathcal{V} = N + 2 - \varphi - r
$$

# Substances pures

::: {.columns}
::: {.column width="50%"}

![Diagramme $\left ( p, T \right )$](pT.pdf "diagramme p, T"){#fig:pT}

:::
::: {.column width="50%"}

* Les tirets ne délimitent pas des transitions entre phase mais plutôt les définitions suivantes 
* Une phase est considérée liquide si elle s'évapore lors d'une détente à température constante
* Une phase est considérée vapeur si elle se condense lorsqu'elle est refroidie à pression constante

:::
:::

---

![Diagramme $\left ( p, V \right )$](pV.pdf "diagramme p, V"){#fig:pV}

---

::: {.columns}
::: {.column width="50%"}

![](supersub.png "supersub")

:::
::: {.column width="50%"}

* Courbe de rosée : frontière entre les domaines vapeur et la zone diphasée liquide/vapeur. On parlera de vapeur saturée.
* Courbe d'ébullition : frontière entre les domaines liquide et la zone diphasée liquide/vapeur. On parlera de liquide saturé.
* Vapeur surchauffée
* Liquide sous-refroidi

:::
:::

---

![Diagramme $\left (p, V, T \right )$](pVT.png "diagramme p, V, T")

# Systèmes diphasiques
<!-- Smith, Sec. 6.5 (pp. 254) -->
<!-- App. E -->
<!-- Chap. 12 & 13 -->

* Relation de Clapeyron

