---
title: Équations d'état
date: MFT-3-1-2 2021/2022
author: Vincent Le Chenadec
header-includes:
- \usepackage{siunitx}
- \usepackage{amsmath}
- \usepackage{stmaryrd}
- \DeclareSIUnit\nothing{\relax}
...

# Facteur de compressibilité

* Le facteur de compressibilité désigne le rapport du volume molaire d'un mélange ou d'un corps pur réel, liquide ou gazeux, au volume molaire du gaz parfait correspondant aux mêmes pression, température et composition.
* Il est défini par
$$
Z = \frac{V}{V ^ \mathrm{gp}} = \frac{p V}{R T}.
$$
* $Z$ mesure la déviation du comportement d'un fluide réel par rapport à celui d'un gaz parfait.

---

* Pour un gaz parfait, $Z$ vaut donc $1$, quelles que soient la nature du gaz et les conditions de pression, température, composition.
* Pour un fluide réel, $Z$ dépend de la nature du fluide et des conditions opératoires, et
$$
\SI{0,2}{\nothing} < Z < \SI{1,2}{\nothing}.
$$
* Le facteur de compressibilité est une variable utilisée notamment dans les équations d'état telles que les équations d'état cubiques ou l'équation du viriel.

---

![Facteur de compressibilité du méthane](methane.pdf "Z méthane")

# Équation du viriel

* Le théorème du viriel (Clausius, 1865) ou bien la physique statistique conduisent à un type d'équation connu sous le nom d'équation du viriel.

* L'équation d'état du viriel s'écrit le plus souvent comme l'expression de $Z$ en fonction des puissances du volume molaire
$$
Z = 1 + \frac{B _ 2}{V} + \frac{B _ 3}{V ^ 2} + \frac{B _ 4}{V ^ 3} + \ldots
$$
* L'équation du viriel est aussi rencontrée sous une autre forme, à savoir
$$
Z = 1 + C _ 2 P + C _ 3 P ^ 2 + C _ 4 P ^ 3 + \ldots
$$

---

* Déterminés expérimentalement pour les fluides réels, les coefficients $\left ( B _ i \right )$ et $\left ( C _ i \right )$ sont appelés coefficients du viriel.
* Ils dépendent du modèle d'interaction entre particules (par exemple le modèle des sphères dures, ou le potentiel de Lennard-Jones), et ne dépendent que de la température et des fractions molaires des diverses espèces chimiques présentes dans le mélange.
* En pratique on se limite à $B _ 2$ et $B _ 3$.

# Équations d'état cubiques

* À la fin des années 40, Redlich et Kwong développèrent l'équation d'état suivante
$$
p = \frac{R T}{V - b} - \frac{a \left ( T \right )}{V \left ( V + b \right )}
$$
* Cette équation fut généralisée plus tard sous la forme de l'équation générique
$$
p = \frac{R T}{V - b} - \frac{a \left ( T \right )}{\left ( V + \epsilon b \right ) \left ( V + \sigma b \right )}
$$
* Les paramètres $\epsilon$ et $\sigma$ sont indépendants de la substance, tandis que $a \left ( T \right )$ et $b$ en dépendent

---

* On retiendra les cas particuliers de

	- l'équation de van der Waals (vdW) ;
	- les équations de Redlich/Kwong (RK) et de Soave/Redlich/Kwong (SRK) ;
	- l'équation de Peng/Robinson (PR).

# Point critique

* On définit le point critique comme le point d'inflexion de l'isotherme $T = T _ c$ dans le diagramme de Clapeyron
$$
\left ( \frac{\partial p}{\partial V} \right ) _ {T _ c} = 0 \quad \mathrm{et} \quad \left ( \frac{\partial ^ 2 p}{\partial V ^ 2} \right ) _ {T _ c} = 0
$$

**Exercice** -- Dans le cas de l'équation de van der Waals,
$$
p = \frac{R T}{V - b} - \frac{a}{V ^ 2},
$$
montrer que
$$
b = \frac{R T _ c}{8 p _ c} \quad \mathrm{et} \quad a = \frac{27 R ^ 2 T _ c ^ 2}{64 p _ c}.
$$

<!-- Smith pp. 98 -->

# Le principe des états correspondants

* On peut définir la température et la pressure réduites par
$$
T _ r \triangleq \frac{T}{T _ c}, \quad p _ r \triangleq \frac{p}{p _ c} \quad \mathrm{et} \quad V _ r \triangleq \frac{V}{V _ c}.
$$
* Le principe des états correspondants énonce que tous les corps purs à l'état fluide, aux mêmes température réduite et pression réduite, présentent assez exactement le même facteur de compressibilité, et que tous s'écartent du modèle du gaz parfait au même degré. 

**Exercice** -- Montrer que l'équation d'état de van der Waals peut se réécrire
$$
p _ r = \frac{8 T _ r}{3 V _ r - 1} - \frac{3}{V _ r ^ 2}.
$$

