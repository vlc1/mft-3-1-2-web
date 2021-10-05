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

# Relation de Clapeyron

* Lorsque deux phases $\alpha$ et $\beta$ d'une substance pure $i$ sont à l'équilibre
$$
G ^ \alpha _ i \left ( p, T \right ) = G ^ \beta _ i \left ( p, T \right )
$$
* Les états d'équilibre d'un tel système sont donc définit implicitement comme l'ensemble
$$
f \left ( p, T \right ) \equiv G ^ \beta _ i \left ( p, T \right ) - G ^ \alpha _ i \left ( p, T \right ) = 0
$$
* On exprime habituellement $p = p ^ \mathrm{sat} \left ( T \right )$
* La dérivée de cette expression est alors obtenue du théorème des fonctions implicites
$$
\frac{\mathrm{d} p ^ \mathrm{sat}}{\mathrm{d} T} = -\left ( \frac{\partial f}{\partial p} \right ) _ T ^ {-1} \left ( \frac{\partial f}{\partial T} \right ) _ p
$$

---

* On en déduit
$$
\frac{\mathrm{d} p ^ \mathrm{sat}}{\mathrm{d} T} = -\left ( \left ( \frac{\partial G ^ \beta _ i}{\partial p} \right ) _ T - \left ( \frac{\partial G ^ \alpha _ i}{\partial p} \right ) _ T \right ) ^ {-1} \left ( \left ( \frac{\partial G ^ \beta _ i}{\partial T} \right ) _ p - \left ( \frac{\partial G ^ \alpha _ i}{\partial T} \right ) _ p \right )
$$
* Or $\forall \gamma \in \left \{ \alpha, \beta \right \}$
$$
\left \{ \begin{aligned}
\left ( \frac{\partial G _ i ^ \gamma}{\partial p} \right ) _ T & = V _ i ^ \gamma, \\ 
\left ( \frac{\partial G _ i ^ \gamma}{\partial T} \right ) _ p & = - S _ i ^ \gamma
\end{aligned} \right .
$$
* On trouve donc
$$
\frac{\mathrm{d} p ^ \mathrm{sat}}{\mathrm{d} T} = -\frac{-S _ i ^ \beta + S _ i ^ \alpha}{V _ i ^ \beta - V _ i ^ \alpha} = \frac{S _ i ^ \beta - S _ i ^ \alpha}{V _ i ^ \beta - V _ i ^ \alpha}
$$ {#eq:clapeyronentropie}

---

* Enfin, on peut intégrer la relation fondamentale
$$
\mathrm{d} H _ i = T \mathrm{d} S _ i + V \mathrm{d} p
$$
à **pression constante** pour relier enthalpie de changement d'état (ou chaleur latente) à l'entropie de changement d'état
$$
\int \left ( \mathrm{d} H \right ) _ p = T ^ \mathrm{sat} \int \left ( \mathrm{d} S \right ) _ p
$$
$$
\Delta _ {\alpha \to \beta} H _ i = T ^ \mathrm{sat} \Delta _ {\alpha \to \beta} S _ i
$$ {#eq:enthalpieentropie}
* On trouve enfin en utilisant [@eq:clapeyronentropie;@eq:enthalpieentropie]
$$
\begin{aligned}
\frac{\mathrm{d} p ^ \mathrm{sat}}{\mathrm{d} T} & = \frac{H _ i ^ \beta - H _ i ^ \alpha}{T \left ( V _ i ^ \beta - V _ i ^ \alpha \right )} \\
& = \frac{\Delta H _ i}{T \Delta V _ i}
\end{aligned}
$$

# [Règle du palier de Maxwell](https://fr.wikipedia.org/wiki/R%C3%A8gle_du_palier_de_Maxwell)

![Règle du palier de Maxwell](isothermes_vdw.png "règle du palier de Maxwell")

---

* La règle du palier de Maxwell
$$
\left ( V _ i ^ \beta - V _ i ^ \alpha \right ) P _ i ^ {\alpha \to \beta} = \int _ {V _ i ^ \alpha} ^ {V _ i ^ \beta} P \mathrm{d} V
$$
permet le calcul de la pression de vapeur saturante d'un corps pur à une température $T < T _ c$ donnée
* Elle se déduit de l'égalité des potentiels chimiques des phases pures
$$
G _ i ^ \alpha = G _ i ^ \beta
$$
* En intégrant la différentielle de cette équations entre les deux états saturés à température constante, on trouve
$$
0 = \int _ {G ^ \alpha _ i} ^ {G ^ \beta _ i} \left ( \mathrm{d} G _ i \right ) _ T = \int _ {V _ i ^ \alpha} ^ {V _ i ^ \beta} V _ i \mathrm{d} p
$$
car
$$
\left ( \frac{\partial G _ i}{\partial p} \right ) _ {T, n} = V _ i
$$

---

* En intégrant par parties, on trouve
$$
\left [ p V _ i \right ] _ {V _ i ^ \alpha} ^ {V _ i ^ \beta} = \int _ {V _ i ^ \alpha} ^ {V _ i ^ \beta} p \mathrm{d} V
$$
* Or les états saturés $\alpha$ et $\beta$ sont à la même pression $p ^ {\alpha \to \beta}$ d'où on déduit la règle du palier de Maxwell

<!-- Kondpundi, Chap. 7 -->

# Règle des bras de levier
<!-- Smith pp. 243 -->

* Aussi appelée règle des segments inverses
* Quand les états liquide et vapeur coexistent dans un système à l'équilibre, la valeur totale d'une grandeur extensive s'écrit
$$
n _ i A _ i = n _ i ^ \alpha A _ i ^ \alpha + n _ i ^ \beta A _ i ^ \beta
$$
ou encore
$$
A _ i = x _ i ^ \alpha A _ i ^ \alpha + x _ i ^ \beta A _ i ^ \beta
$$
où $x _ i ^ \alpha + x _ i ^ \beta = 1$
* Connaissant les grandeurs totale ($A _ i$) et saturées ($A _ i ^ \alpha$ et $A _ i ^ \beta$), la règle du levier permet de calculer le titre de chaque phase, par exemple
$$
x _ i ^ \alpha = \frac{A _ i - A _ i ^ \beta}{A _ i ^ \alpha - A _ i ^ \beta}
$$
* Cette relation est applicable à toute grandeur extensive : $A = V$, $U$...

<!--
# Systèmes diphasiques
-->
<!-- Smith, Sec. 6.5 (pp. 254) -->
<!-- App. E -->
<!-- Chap. 12 & 13 -->

