---
title: Potentiel chimique, état standard et modèle de mélange
date: MFT-3-1-2 2021/2022
author: Vincent Le Chenadec
header-includes:
- \usepackage{siunitx}
- \usepackage{amsmath}
- \usepackage{stmaryrd}
...

# Le modèle du gaz parfait

* Un gaz parfait est un gaz dont les molécules n'interagissent pas entre elles en dehors des chocs supposés élastiques et dont la taille est négligeable par rapport au libre parcours moyen
* La théorie cinétique permet d'énoncer l'équation d'état
$$
p V = R T
$$
* $R = \SI{8,314462}{\joule\per\kelvin\per\mole}$ dénote la constante universelle des gaz parfaits
* On a
$$
R = N _ A k _ B
$$
où

	- $N _ A = \SI{6,022e23}{\per\mole}$ dénote le nombre d'Avogadra
	- $k _ B = \SI{1,38e-23}{\joule\per\kelvin}$ dénote la constante de Boltzmann

---

* Pour un gaz parfait
$$
U _ i = U _ i \left ( T \right ) \quad \mathrm{et} \quad H _ i = H _ i \left ( T \right )
$$
* On déduit de la définition des cœfficients calorifiques
$$
H _ i \left ( T \right ) = H _ i \left ( T _ 0 \right ) + \int _ {T _ 0} ^ T C _{p i} \left ( \theta \right ) \mathrm{d} \theta
$$
et
$$
S _ i \left ( p, T \right ) = S _ i \left ( p _ 0, T _ 0 \right ) + \int _ {T _ 0} ^ T \frac{C _ {p i} \left ( \theta \right )}{\theta} \mathrm{d} \theta - R \ln \frac{p}{p _ 0}
$$

# Gaz *thermiquement* ou *caloriquement* parfait

* Un gaz **caloriquement** est un gaz dont les capacités calorifiques sont constantes et données par
$$
\left \{ \begin{aligned}
C _ p - C _ V & = R, & \quad \text{(relation de Mayer)} \\
C _ p  & = \gamma C _ V, & \quad \text{(définition du cœfficient adiabatique)}
\end{aligned} \right .
$$
* Les capacités calorifiques d'un gaz **thermiquement** parfait dépendent de la température
$$
C _ V = C _ V \left ( T \right ) \quad \mathrm{et} \quad C _ p = C _ p \left ( T \right )
$$
* Ces coefficients sont alors données par des corrélations empiriques

---

* Une corrélation souvent utilisées est la suivante
$$
\frac{C _ {p i} ^ \minuso \left ( T \right )}{R} = \frac{a _ 1}{T ^ 2} + \frac{a _ 2}{T} + a _ 3 + a _ 4 T + a _ 5 T ^ 2 + a _ 6 T ^ 3 + a _ 7 T ^ 4
$$
$$
\frac{H _ i ^ \minuso \left ( T \right )}{R T} = -\frac{a _ 1}{T ^ 2} + \frac{a _ 2 \ln \left ( T \right )}{T} + a _ 3 + \frac{a _ 4 T}{2} + \frac{a _ 5 T ^ 2}{3} + \frac{a _ 6 T ^ 3}{4} + \frac{a _ 7 T ^ 4}{5} + \frac{b _ 1}{T}
$$
et
$$
\frac{S _ i ^ \minuso \left ( T \right )}{R} = -\frac{a _ 1}{2 T ^ 2} - \frac{a _ 2}{T} + a _ 3 \ln T + a _ 4 T + \frac{a _ 5 T ^ 2}{2} + \frac{a _ 6 T ^ 3}{3} + \frac{a _ 7 T ^ 4}{4} + b _ 2
$$
* Pour mieux comprendre ces définitions, il convient de définir les propriétés standards

# Propriétés standards

* Les propriétés des substances pures sont le plus souvent exprimées à la **pression standard**
$$
p ^ \minuso = \SI{1e5}{\pascal}
$$
* Les valeurs de la litérature scientifique sont de plus souvent reportées à $\SI{25}{\celsius} = \SI{273,15}{\kelvin}$
* L'état de référence d'un **élément** à une température donnée est sa forme la plus stable à $p ^ \minuso$
* Exemples

	- L'état standard de l'azote ($\mathrm{N}$) à $\SI{298}{\kelvin}$ est celui de la vapeur de diazote ($\mathrm{N} _ 2 \left ( g \right )$)

---

| Élément | Symbole | Numéro atomique | État standard |
|:-------:|:------:|:---------------:|:-------------:|
| Hydrogène | H | $1$ | $\mathrm{H} _ 2 \left ( g \right )$ |
| Hélium | He | $2$ | $\mathrm{He} \left ( g \right )$ |
| Carbone | C | $6$ | $\mathrm{C} \left ( graphite \right )$ |
| Oxygène | O | $8$ | $\mathrm{O} _ 2 \left ( g \right )$ |

# Enthalpies standards

## Enthalpies standards de transition

* Le changement d'enthalpie standard (à $p ^ \minuso$) qui accompagne un changement d'état est appelé **enthalpie standard de transition** et dénotée
$$
\Delta _ \mathrm{trs} H _ i ^ \minuso \left ( T \right )
$$

---

* Exemples

	- Pour l'évaporation de l'eau, on considère la réaction
	$$
	\mathrm{H} _ 2 \mathrm{O} \left ( l \right ) \to \mathrm{H} _ 2 \mathrm{O} \left ( g \right )
	$$
	pour laquelle à $\SI{25}{\celsius}$
	$$
	\Delta _ \mathrm{vap} H _ i ^ \minuso \left ( \SI{273,15}{\kelvin} \right ) = \SI{40,66}{\kilo\joule\per\mole}
	$$
	- Pour la fusion de l'eau, on considère cette fois-ci la réaction
	$$
	\mathrm{H} _ 2 \mathrm{O} \left ( s \right ) \to \mathrm{H} _ 2 \mathrm{O} \left ( l \right )
	$$
	pour laquelle à $\SI{25}{\celsius}$
	$$
	\Delta _ \mathrm{fus} H _ i ^ \minuso \left ( \SI{273,15}{\kelvin} \right ) = \SI{6,01}{\kilo\joule\per\mole}
	$$

---

* S'agissant d'une fonction d'état, on observe
$$
\Delta _ \mathrm{sub} H _ i ^ \minuso \left ( T \right ) = \Delta _ \mathrm{fus} H _ i ^ \minuso \left ( T \right ) + \Delta _ \mathrm{vap} H _ i ^ \minuso \left ( T \right )
$$
et
$$
\begin{aligned}
\Delta _ \mathrm{liq} H _ i ^ \minuso \left ( T \right ) & = - \Delta _ \mathrm{vap} H _ i ^ \minuso \left ( T \right ) \\
\Delta _ \mathrm{sol} H _ i ^ \minuso \left ( T \right ) & = - \Delta _ \mathrm{fus} H _ i ^ \minuso \left ( T \right ) \\
\Delta _ \mathrm{cond} H _ i ^ \minuso \left ( T \right ) & = - \Delta _ \mathrm{sub} H _ i ^ \minuso \left ( T \right )
\end{aligned}
$$

## Enthalpies standards de réaction

* Étant donnée une réaction chimique
$$
\sum _ i \nu _ i \chi _ i = 0
$$
où

	- $\nu _ i < 0$ caractérise un réactant
	- $\nu _ i > 0$ caractérise un produit

* Alors l'enthalpie standard de cette réaction est définie par
$$
\Delta _ r H ^ \minuso \left ( T \right ) = \sum _ i \nu _ i H _ i ^ \minuso \left ( T \right )
$$
* On définit de la même manière
$$
\Delta _r S ^ \minuso \left ( T \right ) = \sum _ i \nu _ i S _ i ^ \minuso \left ( T \right )
$$
et
$$
\Delta _r G ^ \minuso \left ( T \right ) = \Delta _ r H ^ \minuso \left ( T \right ) - T \Delta _ r S ^ \minuso \left ( T \right )
$$

## Enthalpies standards de formation

* Les réactions de formation ont un intérêt particulier
* On définit l'enthalpie de formation d'un constituant l'enthalpie de la réaction formant ladite espèce à partir de ses éléments dans leurs états standards
* Exemple : on notera
$$
\Delta _ f H ^ \minuso _ {\mathrm{C} _ 6 \mathrm{H} _ 6 \left ( l \right )}
$$
(benzène liquide) l'enthalpie standard de la réaction
$$
6 \mathrm{C} \left ( graphite \right ) + 3 \mathrm{H} _ 2 \left ( g \right ) \to \mathrm{C} _ 6 \mathrm{H} _ 6 \left ( l \right )
$$

## Variations de température

* Pour obtenir une enthalpie standard à une température donnée, il suffit d'intégrer
$$
\Delta _ r H ^ \minuso \left ( T _ 2 \right ) = \Delta _ r H ^ \minuso \left ( T _ 1 \right ) + \int _ {T _ 1} ^ {T _ 2} \Delta C _ p ^ \minuso \left ( \theta \right ) \mathrm{d} \theta
$$

# La loi de Dalton

* La loi de Dalton énonce que la pression au sein d'un mélange de gaz parfaits est égale à la somme des pressions partielles de ses constituants
$$
p = \sum _ i p _ i
$$
* Comme pour le modèle du gaz parfait, cette loi suppose que chacune des molécules qui constituent le mélange gazeux n'interagit avec les autres molécules du gaz que par des chocs élastiques
<!--
* La pression exercée par un tel gaz est directement proportionnelle au nombre de molécules (ou de moles) du gaz
$$
\frac{p}{n} = \frac{p _ 1}{n _ 1} = \frac{p _ 2}{n _ 2} = \ldots
$$
soit encore
$$
\forall i \in \left \llbracket 1, N \right \rrbracket, \quad p _ i = x _ i p
$$
-->

---

* Si chaque gaz se comporte comme un gaz parfait
$$
n _ i V _ i = \frac{n _ i R T}{p _ i}
$$
* Or dans un mélange de gaz parfaits, tous les gaz occupent l'intégralité du volume
$$
\forall i \in \left \llbracket 1, N \right \rrbracket, \quad n _ i V _ i = n V
$$
d'où on déduit
$$
p _ i = \frac{n _ i}{n} \frac{R T}{V}
$$ {#eq:partialpressure}
* D'après la définition de $p$, on trouve en sommant
$$
p = \frac{\overbrace{\sum _ i n _ i} ^ {= n}}{n} \frac{R T}{V} = \frac{R T}{V}
$$
* On déduit enfin de @eq:partialpressure
$$
p _ i = x _ i p
$$

# Mélange idéal de gaz parfaits

* Dans ce modèle, on suppose que les propriétés partielles molaires (à l'exception du volume) d'un constituant à $p$ et $T$ sont identiques à celles de la substance pure à $p _ i$ et $T$
$$
\overline{A} _ i \left ( T, p \right ) = A _ i \left ( T, p _ i \right )
$$
* L'enthalpie d'un gaz parfait étant indépendante de la pression, on a
$$
\overline{H} _ i \left ( T \right ) = H _ i \left ( T \right )
$$
* L'entropie d'un gaz parfait cependant dépend de la pression, et en particulier
$$
S _ i \left ( T, p \right ) - S _ i \left ( T, p _ i \right ) = -R \ln \frac{p}{p _ i} = - R \ln \frac{p}{x _ i p} = R \ln x _ i
$$
* On déduit donc
$$
\overline{S} _ i \left ( T, p \right ) = S _ i \left ( T, p \right ) - R \ln x _ i
$$

---

* Enfin, étant données les relations
$$
G _ i = H _ i - T S _ i
$$
et
$$
\overline{G} _ i = \overline{H} _ i - T \overline{S} _ i
$$
on trouve dans ce modèle
$$
\mu _ i = \overline{G} _ i= H _ i - T S _ i + R T \ln x _ i
$$

---

* Les relations de sommation donnent enfin
$$
H = \sum _ i x _ i H _ i,
$$
$$
S = \sum _ i x _ i S _ i - R \sum x _ i \ln x _ i
$$
et
$$
G = \sum _ i x _ i G _ i + R T \sum x _ i \ln x _ i
$$

<!--
# Potentiel chimique

* On a introduit à la séance précédente le potentiel chimique
$$
\mu _ i = G _ i = \left ( \frac{\partial G}{\partial N _ i} \right ) _ {p, T, N _ {j \ne i}}.
$$
* On peut de plus différentier la relation de Gibbs-Helmholtz par rapport à $N _ i$ à $T$, $p$ et $N _ {j \ne i}$ constants pour trouver
$$
\left [ \frac{\partial}{\partial T} \left ( \frac{\mu _ i}{T} \right ) \right ] _ {p, N _ j} = - \frac{H _ i}{T ^ 2}
$$
où $H _ i$ est l'enthalpie molaire partielle introduite précédemment.
* Si la valeur du potentiel chimique à une température et pression de référence ($T _ 0$ et $p _ 0$) est connue, on peut intégrer cette relation pour obtenir le potentiel chimique à $T$ et $p _ 0$
$$
\frac{\mu _ i \left ( p _ 0, T, \mathbf{N} \right )}{T} = \frac{\mu _ i \left ( p _ 0, T _ 0, \mathbf{N} \right )}{T _ 0} - \int _ {T _ 0} ^ T \frac{H _ i \left ( p _ 0, \theta, \mathbf{N} \right )}{\theta ^ 2} \mathrm{d} \theta.
$$

---

* Pour connaitre $\mu _ i$ à une pression quelconque, on intègre la relation
$$
V _ i = \left ( \frac{\partial \mu _ i}{\partial p} \right ) _ {T, N _j}
$$
pour obtenir
$$
\mu _ i \left ( p, T, \mathbf{N} \right ) = \mu _ i \left ( p _ 0, T, \mathbf{N} \right ) + \int _ {p _ 0} ^ p V _ i \left ( \phi, T, \mathbf{N} \right ) \mathrm{d} \phi.
$$

---

* On déduit de ces deux relations
\begin{multline*}
\frac{\mu _ i \left ( p, T, \mathbf{N} \right )}{T} = \frac{\mu _ i \left ( p _ 0, T _ 0, \mathbf{N} \right )}{T _ 0} \\
\; - \int _ {T _ 0} ^ T \frac{H _ i \left ( p _ 0, \theta, \mathbf{N} \right )}{\theta ^ 2} \mathrm{d} \theta + \frac{1}{T} \int _ {p _ 0} ^ p V _ i \left ( \phi, T, \mathbf{N} \right ) \mathrm{d} \phi.
\end{multline*}
* Les grandeurs $H _ i \left ( p _ 0, \theta, \mathbf{N} \right )$ et $V _ i \left ( \phi, T, \mathbf{N} \right )$ sont fonctions de la composition $\mathbf{N} = \left ( N _ 1, \ldots, N _ n \right )$, et donc difficiles à mesurer.
* Les modèles de mélange, notamment le mélange idéal, permet de relier ces quantités aux valeurs dans les substances pures, à savoir
$$
H _ i \left ( p _ 0, \theta, \mathbf{e} _ i \right ) \quad \mathrm{et} \quad V _ i \left ( \phi, T, \mathbf{e} _ i \right )
$$
où $\mathbf{e} _ i$ est le vecteur creux caractériser par l'élément $i$ ayant la valeur $1$ et tous les autres la valeur $0$.
-->

<!--

* Parmi les grandeurs molaires partielles, le potentiel chimique est particulièrement utile
$$
\mu _ i = G _ i = \left ( \frac{\partial G}{\partial N _ i} \right ) _ {T, p, N _ {j \ne i}}
$$
* Les relations
$$
\left \{ \begin{aligned}
V _ i & = \left ( \frac{\partial V}{\partial N _ i} \right ) _ {T, p, N _ j \ne k} = \left ( \frac{\partial \mu _ i}{\partial p} \right ) _ {T, N _ j}, \\
S _ i & = \left ( \frac{\partial S}{\partial N _ i} \right ) _ {T, p, N _ {j \ne i}} = -\left ( \frac{\partial \mu _ i}{\partial T} \right ) _ {p, N _ j}
\end{aligned} \right .
$$
permettent d'écrire
$$
\mathrm{d} \mu _ i = -S _ i \mathrm{d} T + V _ i \mathrm{d} p + \sum _ {j = 1} ^ n \left ( \frac{\partial \mu _ i}{\partial c _ j} \right ) _ { T, p, N _ {k \ne j}} \mathrm{d} c _ j.
$$
-->

<!--
* On peut alors écrire $\mathrm{d} \mu _ i$, $i \in \left \llbracket 1, n \right \rrbracket$ de différentes manières
$$
\begin{aligned}
\mathrm{d} \mu _ i & = - S _ i \mathrm{d} T + V _ i \mathrm{d} p + \sum _ {j = 1} ^ n \left ( \frac{\partial \mu _ i}{\partial N _ j} \right ) _ {T, p, N _ {k \ne j}} \mathrm{d} N _ j, \\
& = - S _ i \mathrm{d} T + V _ i \mathrm{d} p + \sum _ {j = 1} ^ n \left ( \frac{\partial \mu _ i}{\partial c _ j} \right ) _ {T, p, c _ {k \ne j}} \mathrm{d} c _ j, \\
& = - S _ i \mathrm{d} T + V _ i \mathrm{d} p + \mathrm{d} \mu _ i ^ c
\end{aligned}
$$
où la dernière ligne définit $\mathrm{d} \mu _ i ^ c$
* On peut également définir
$$
\mathrm{d} \mu _ i ^ T = \mathrm{d} \mu _ i + S _ i \mathrm{d} T = V _ i \mathrm{d} p + \mathrm{d} \mu _ i ^ c
$$
-->

# Enthalpie libre d'une substance pure

* La relation de Gibbs-Helmholtz
$$
\left [ \frac{\partial}{\partial T} \left ( \frac{G _ i}{T} \right ) \right ] _ p = - \frac{H _ i}{T ^ 2},
$$
où $G _ i$ et $H _ i$ représentent les propriétés molaires de la substance pure $i$, peut être intégrer entre $T _ 0$ et $T$ pour obtenir
$$
\frac{G _ i \left ( p _ 0, T \right )}{T} = \frac{G _ i \left ( p _ 0, T _ 0 \right )}{T _ 0} - \int _ {T _ 0} ^ T \frac{H _ i \left ( p _ 0, \theta \right )}{\theta ^ 2} \mathrm{d} \theta.
$$
* Pour connaitre $G _ i$ à une pression quelconque, on intègre le volume molaire
$$
V _ i = \left ( \frac{\partial G _ i}{\partial p} \right ) _ {T}
$$
pour obtenir
$$
G _ i \left ( p, T \right ) = G _ i \left ( p _ 0, T \right ) + \int _ {p _ 0} ^ p V _ i \left ( \phi, T \right ) \mathrm{d} \phi.
$$

---

* On déduit de ces deux relations
\begin{multline*}
\frac{G _ i \left ( p, T \right )}{T} = \frac{G _ i \left ( p _ 0, T _ 0 \right )}{T _ 0} \\
\; - \int _ {T _ 0} ^ T \frac{H _ i \left ( p _ 0, \theta \right )}{\theta ^ 2} \mathrm{d} \theta + \frac{1}{T} \int _ {p _ 0} ^ p V _ i \left ( \phi, T \right ) \mathrm{d} \phi.
\end{multline*}
<!--
* Afin de déterminer $G _ i \left ( p _ 0, T _ 0 \right )$, il convient de présenter plusieurs définitions :

	- L'état standard (Atkins, pp. 65) ;
	- L'enthalpie standard de
-->

