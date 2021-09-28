---
title: Rappels de thermodynamique
date: MFT-3-1-2 2021/2022
author: Vincent Le Chenadec
header-includes:
- \usepackage{siunitx}
- \usepackage{amsmath}
- \usepackage{stmaryrd}
...

# Fonctions homogènes

## Définition

Une fonction $f \colon \mathbb{R} ^ n \to \mathbb{R} ^ m$ est dite positivement homogène de degré $k$ si
$$
\forall \lambda > 0, \quad f \left ( \lambda x _ 1, \ldots, \lambda x _ n \right ) = \lambda ^ k f \left ( x _ 1, \ldots, x _ n \right ).
$$

## Propriété

Si $f$ est différentiable, alors ces dérivées partielles premières sont homogènes de degré $k - 1$.

---

## Identité d'Euler

Une fonction de plusieurs variables $f \colon \mathbb{R} ^ n \to \mathbb{R} ^ m$ différentiable en tout point est positivement homogène de degré $k$ si et seulement si la relation suivante, appelée identité d'Euler, est vérifiée
$$
\forall x = \left ( x_1, \ldots, x _ n \right ) \in \mathbb{R} ^ n, \quad \sum _ {i = 1} ^ n x _ i \left ( \frac{\partial f}{\partial x _ i} \right ) _ {x _ {j \ne i}} = k f \left ( x \right ).
$$

* Une grandeur intensive correspond à $k = 0$ ;
* Une grandeur extensive à $k = 1$.

# Grandeurs d'état

* La pression : $p$ (exprimée en $\si{\pascal}$)
* La température : $T$ (exprimée en $\si{\kelvin}$)
* Les quantités de matière (exprimées en $\si{\mole}$)

	- De l'espèce $i \in \left \llbracket 1, N \right \rrbracket$ : $n _ i$
	- Totale : $n = \sum _ {i = 1} ^ N n _ i$

* Le volume molaire $V$ (exprimé en $\si{\meter\cubed\per\mole}$)
* L'énergie interne molaire $U$ (exprimée en $\si{\joule\per\mole}$)
* L'entropie molaire $S$ (exprimée en $\si{\joule\per\kelvin\per\mole}$)
* $H$, $F$...

# Fonctions d'état usuelles

* Énergie interne molaire
$$
\left ( n U \right ) = T \left ( n S \right ) - p \left ( n V \right ) + \sum _ {i = 1} ^ N \left ( n _ i \mu _ i \right )
$$
* Énergie libre molaire (ou énergie de Helmholtz)
$$
\left ( n F \right ) = \left ( n U \right ) - T \left ( n S \right ) = - p \left ( n V \right ) + \sum _ {i = 1} ^ N \left ( n _ i \mu _ i \right )
$$
* Enthalpie molaire
$$
\left ( n H \right ) = \left ( n U \right ) + p \left ( n V \right ) = T \left ( n S \right ) + \sum _ {i = 1} ^ N \left ( n _ i \mu _ i \right )
$$
* Enthalpie libre molaire (ou énergie de Gibbs)
$$
\left ( n G \right ) = \left ( n H \right ) - T \left ( n S \right ) = \sum _ {i = 1} ^ N \left ( n _ i \mu _ i \right )
$$

# Convexité et transformation de Legendre

* Variables conjuguées

| Grandeur extensive | Grandeur intensive |
|:------------------:|:------------------:|
| $\left ( n V \right )$ | $-p$ |
| $\left ( n S \right )$ | $T$ |
| $n _ i$ | $\mu _ i$ |

* Variables naturelles

| Grandeur d'état | Variables naturelles |
|:---------------:|:--------------------:|
| $\left ( n U \right )$ | $\left ( V, n S, n _ 1, \ldots, n _ N \right )$ |
| $\left ( n H \right )$ | $\left ( p, n S, n _ 1, \ldots, n _ N \right )$ |
| $\left ( n F \right )$ | $\left ( V, T, n _ 1, \ldots, n _ N \right )$ |
| $\left ( n G \right )$ | $\left ( p, T, n _ 1, \ldots, n _ N \right )$ |

# Identités fondamentales

* Énergie interne
$$
\mathrm{d} \left ( n U \right ) = T \mathrm{d} \left ( n S \right ) - p \mathrm{d} \left ( n V \right ) + \sum _ {i = 1} ^ N \mu _ i \mathrm{d} n _ i
$$
* Énergie libre
$$
\mathrm{d} \left ( n F \right ) = -\left ( n S \right ) \mathrm{d} T - p \mathrm{d} \left ( n V \right ) + \sum _ {i = 1} ^ N \mu _ i \mathrm{d} n _ i
$$
* Enthalpie
$$
\mathrm{d} \left ( n H \right ) = T \mathrm{d} \left ( n S \right ) + \left ( n V \right ) \mathrm{d} p + \sum _ {i = 1} ^ N \mu _ i \mathrm{d} n _ i
$$
* Enthalpie libre
$$
\mathrm{d} \left ( n G \right ) = -\left ( n S \right ) \mathrm{d} T + \left ( n V \right ) \mathrm{d} p + \sum _ {i = 1} ^ N \mu _ i \mathrm{d} n _ i
$$ {#eq:fondamentalgibbs}

# Relation de Gibbs-Duhem

$$
\left ( n V \right ) \mathrm{d} p - \left ( n S \right ) \mathrm{d} T = \sum _ {i = 1} ^ N n _ i \mathrm{d} \mu _ i.
$$ {#eq:gibbsduhem}

# Grandeurs molaires pures

* Lorsque un seul constituant ($i$) rentre dans la composition d'un milieu, on parlera de substance pure.
* On notera $U _ i$, $G _ i$, ..., les grandeurs molaires associées à cette substance pure.
* On aura notamment l'énergie interne molaire
$$
U _ i \colon \left \vert
\begin{aligned}
\mathbb{R} ^ 2 & \to \mathbb{R}, \\
\left ( S, V \right ) & \mapsto U _ i \left ( S, V \right ).
\end{aligned} \right .
$$

<!--

---

* On notera enfin qu'il y a aucune raison de définir de grandeurs partielles molaires pour une substance pure.
* En effet, quelle que soit la grandeur extensive $A _ i$ considérée, l'identité d'Euler permet d'écrire
$$
A _ i = N \left ( \frac{\partial A _ i}{\partial N} \right ) _ {p, T}.
$$
* On préfèrera dès lors noter
$$
a _ i \triangleq \frac{A _ i}{N}.
$$
* On définit ainsi
$$
u _ i \triangleq \frac{U _ i}{N}, \quad s _ i \triangleq \frac{S _ i}{N}, \quad h _ i \triangleq \frac{H _ i}{N}, \quad g _ i \triangleq \frac{G _ i}{N} \ldots
$$

-->

# Grandeurs molaires partielles

* Pour toute grandeur molaire $A$, on définit les grandeurs molaires partielles
$$
\overline{A} _ i \triangleq \left ( \frac{\partial \left ( n A \right )}{\partial n _ i} \right ) _ {p, T, n _ {j \ne i}}
$$
* Le volume molaire partiel est donc défini comme
$$
\overline{V} _ i \triangleq \left ( \frac{\partial \left ( n V \right )}{\partial n _ i} \right ) _ {p, T, n _ {j \ne i}}
$$
* Et l'entropie molaire partielle
$$
\overline{S} _ i \triangleq \left ( \frac{\partial \left ( n S \right )}{\partial n _ i} \right ) _ {p, T, n _ {j \ne i}}
$$
* On montre facilement que
$$
\overline{G} _ i \triangleq \left ( \frac{\partial \left ( n G \right )}{\partial n _ i} \right ) _ {p, T, n _ {j \ne i}} \triangleq \mu _ i
$$
* On définit enfin l'énergie interne partielle
$$
\overline{U} _ i \triangleq T \overline{S} _ i - p \overline{V} _ i + \mu _ i
$$
et l'enthalpie molaire partielle
$$
\overline{H} _ i = T \overline{S} _ i + \mu _ i
$$

---

* On montre (théorème d'Euler)
$$
\left ( n V \right ) = \sum _ {i = 1} ^ N n _ i \overline{V} _ i \quad \mathrm{et} \quad \left ( n S \right ) = \sum _ {i = 1} ^ N n _ i \overline{S} _ i
$$ {#eq:partialeuler}
* De telles relations existent pour toutes les grandeurs molaires partielles
$$
\left ( n A \right ) = \sum _ {i = 1} ^ N n _ i \overline{A} _ i \quad \mathrm{ou} \quad A = \sum _ {i = 1} ^ N x _ i \overline{A} _ i
$$

---

\begin{multline*}
\mathrm{d} \left ( n A \right ) = \left ( \frac{\partial \left ( n A \right )}{\partial p} \right ) _ {T, \mathbf{n}} \mathrm{d} p \\
\; + \left ( \frac{\partial \left ( n A \right )}{\partial T} \right ) _ {p, \mathbf{n}} \mathrm{d} T + \sum _ {i = 1} ^ N \left ( \frac{\partial \left ( n A \right )}{\partial n _ i} \right ) _ {p, T, n _ {j \ne i}} \mathrm{d} n _ i,
\end{multline*}
donc en reconnaissant $\overline{A} _ i$ dans le dernier terme, et en notant que
$$
\left ( \frac{\partial \left ( n A \right )}{\partial p} \right ) _ {T, \mathbf{n}} = n \left ( \frac{\partial \left ( A \right )}{\partial p} \right ) _ {T, \mathbf{x}}
\quad \mathrm{et} \quad
\left ( \frac{\partial \left ( n A \right )}{\partial T} \right ) _ {p, \mathbf{n}} = n \left ( \frac{\partial \left ( A \right )}{\partial T} \right ) _ {p, \mathbf{x}},
$$
on trouve
\begin{multline*}
n \left [ \mathrm{d} A - \left ( \frac{\partial A}{\partial p} \right ) _ {T, \mathbf{x}} \mathrm{d} p - \left ( \frac{\partial A}{\partial T} \right ) _ {p, \mathbf{x}} \mathrm{d} T - \sum _ {i = 1} ^ N \overline{A} _ i \mathrm{d} x _ i \right ] \\
\; + \left [ A - \sum _ {i = 1} ^ N x _ i \overline{A} _ i \right ] = 0.
\end{multline*}

---

* Le dernier terme étant nul, on en déduit
$$
\mathrm{d} A = \left ( \frac{\partial A}{\partial p} \right ) _ {T, \mathbf{x}} \mathrm{d} p + \left ( \frac{\partial A}{\partial T} \right ) _ {p, \mathbf{x}} \mathrm{d} T + \sum _ {i = 1} ^ N \overline{A} _ i \mathrm{d} x _ i
$$

---

* En notant enfin que la différentielle de
$$
A = \sum _ {i = 1} ^ N x _ i \overline{A} _ i
$$
vaut
$$
\mathrm{d} A = \sum _ i x _ i \mathrm{d} \overline{A} _ i + \sum _ i \overline{A} _ i \mathrm{d} x_ i,
$$
on trouve en substituant dans la diapo précédente la relation de Gibbs-Duhem
$$
 \sum _ i x _ i \mathrm{d} \overline{A} _ i = \left ( \frac{\partial A}{\partial p} \right ) _ {T, \mathbf{x}} \mathrm{d} p + \left ( \frac{\partial A}{\partial T} \right ) _ {p, \mathbf{x}} \mathrm{d} T
$$

---

* D'après la relation fondamentale @eq:fondamentalgibbs
$$
\overline{V} _ i = \left ( \frac{\partial \mu _ i}{\partial p} \right ) _ {T, n _ j} \quad \mathrm{et} \quad \overline{S} _ i = - \left ( \frac{\partial \mu _ i}{\partial T} \right ) _ {p, n _ j}
$$
* On en déduit
$$
\mathrm{d} \mu _ i = \overline{V} _ i \mathrm{d} p - \overline{S} _ i \mathrm{d} T + \sum _ {j = 1} ^ N \left ( \frac{\partial \mu _ i}{\partial x _ j} \right ) _ {p, T, n _ {k \ne j}} \mathrm{d} x _ i
$$

# Densités

* Concentration (ou densité molaire) de l'espèce $i$
$$
\forall i \in \left \llbracket 1, N \right \rrbracket, \quad c _ i = \frac{n _ i}{n V}
$$
et totale
$$
c = \sum _ {i = 1} ^ N c _ i
$$
* On déduit de @eq:partialeuler
$$
\sum _ {i = 1} ^ N c_ i \overline{V} _ i = \frac{n V}{n V} = 1 \quad \mathrm{et} \quad \sum _ {i = 1} ^ N c_i \overline{S} _ i = \frac{n S}{n V} = \frac{S}{V} = s
$$

---

* Masse volumique
$$
\forall i \in \left \llbracket 1, N \right \rrbracket, \quad \rho _ i = \frac{m _ i}{n V} = \frac{M _ i n _ i}{n V}
$$
où $M _ i$ dénote la masse molaire
* Volume spécifique
$$
v = \frac{1}{\rho}
$$

---

* La relation de Gibbs-Duhem (@eq:gibbsduhem) peut facilement se réécrire sous la forme
$$
\mathrm{d} p - s \mathrm{d} T = \sum _ {i = 1} ^ n c _ i \mathrm{d} \mu _ i.
$$

# Fractions (ou titres)

* On définit les titres molaires comme suit
$$
\forall i \in \left \llbracket 1, N \right \rrbracket, \quad x _ i = \frac{c _ i}{c} = \frac{n _ i}{n}
$$

# Équilibre

* Deux systèmes $A$ et $B$ sont à l'équilibre

	- Mécanique lorsque $p _ A = p _ B$ ;
	- Thermique lorsque $T _ A = T _ B$ ;
	- Chimique lorsque $\mu _ A = \mu _ B$.

* Enfin, on parlera également d'équilibre cinématique lorsque $v _ A = v _ B$.

# Relation de Helmholtz

$$
\left ( \frac{\partial U _ i}{\partial V} \right ) _ T = T ^ 2 \left [ \frac{\partial}{\partial T} \left ( \frac{p}{T} \right ) \right ] _ V
$$

**Démonstration**

1. Exprimer la différentielle de $U _ i$ par rapport à $V$ et $T$.
1. Utiliser cette expression pour réécrire la relation fondamentale
$$
\mathrm{d} S _ i = \frac{1}{T} \mathrm{d} U _ i + \frac{p}{T} \mathrm{d} V.
$$
en fonction de $\mathrm{d} V$ et $\mathrm{d} T$.
1. Utiliser que la condition d'intégrabilité pour obtenir la relation de Helmholtz.
$S _ i \left ( U _ i, V \right )$ en fonction la différentielle de $U _ i$ par rapport à $V$ et $T$.
1. Montrer que dans le modèle du gaz parfait, $U _ i$ ne dépend pas du volume.
1. Qu'en est-il de l'équation d'état de van der Waals ?

# Relation de Gibbs-Helmholtz

$$
\left [ \frac{\partial}{\partial T} \left ( \frac{G _ i}{T} \right ) \right ] _ p = - \frac{H _ i}{T ^ 2}
$$

# Cœfficients thermoélastiques

* Dilatation thermique isobare
$$
\alpha = \frac{1}{V} \left ( \frac{\partial V}{\partial T} \right ) _ P
$$
* Augmentation de pression isochore
$$
\beta = \frac{1}{P} \left ( \frac{\partial P}{\partial T} \right ) _ V
$$
* Compressibilité isotherme
$$
\chi _ T = - \frac{1}{V} \left ( \frac{\partial V}{\partial p} \right ) _ T
$$

# Cœfficients calorimétriques

* Les capacités calorifiques à volume et pression constantes sont définies par
$$
C _ {V i} = \left ( \frac{\partial U _ i}{\partial T} \right ) _ V
$$
et
$$
C _ {p i} = \left ( \frac{\partial H _ i}{\partial T} \right ) _ V
$$
* Elles s'expriment toutes deux en $\si{\joule\per\kelvin\per\mole}$

<!--

# Exercice

1. À partir de l'identité fondamentale de la thermodynamique, exprimer les potentiels $T$, $p$ et $\left ( \mu_i \right )$ en fonction de $U$.
1. En utilisant le fait que $U$, $S$, $V$ et $\left ( N _ i \right )$ sont des grandeurs extensives et le théorème d'Euler, montrer que $U = T S - p V + \sum _ i \mu_i N_i$.
1. En déduire la relation de Gibbs-Duhem
$$
V \mathrm{d} p - S \mathrm{d} T = \sum _ {i = 1} ^ n N _ i \mathrm{d} \mu _ i.
$$
1. Étant données les définitions de $u \triangleq U / V$, $s \triangleq S / V$ et $c _ i \triangleq N _ i / V$, montrer que
$$
\mathrm{d} u = T \mathrm{d} s + \sum _ {i = 1} ^ n \mu _ i \mathrm{d} c _ i.
$$

---

1. Démontrer le relation de Helmholtz.
1. Démontrer la relation de Gibbs-Helmholtz.

-->

