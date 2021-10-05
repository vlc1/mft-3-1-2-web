---
title: Modèles bifluides
date: MFT-3-1-2 2021/2022
author: Vincent Le Chenadec
header-includes:
- \usepackage{siunitx}
- \usepackage{amsmath}
- \usepackage{stmaryrd}
...

# Modélisation des écoulements diphasiques

On oppose souvent

1. Les modèles à un fluide et
1. Les modèles à deux fluides, ou *bifluides*

dans la modélisation des écoulements diphasiques

---

## Modèles à un fluide

* La plupart du temps utilisée dans la limite incompressible et isotherme, sans changement de phase
* Ces modèles enrichissent les équations de Navier-Stokes
$$
\left \{ \begin{aligned}
\nabla \cdot \mathbf{u} & = 0, \\
\rho \left [ \partial _ t \mathbf{u} + \left ( \mathbf{u} \cdot \nabla \right ) \mathbf{u} \right ] & = - \nabla p + \nabla \cdot \boldsymbol{\sigma} + \mathbf{f} _ \mathrm{vol}
\end{aligned} \right .
$$
par l'ajout de

	- Une fraction volume $\chi$, dont l'évolution est régie par
	$$
	\partial _ t \chi + \left ( \mathbf{u} \cdot \nabla \right ) \chi = 0 ;
	$$
	- Une force interfaciale ($\mathbf{f} _ \mathrm{surf}$) ;
	- Équations d'état pour les densités et viscosités effectives, telles que
	$$
	\rho = \chi \rho _ 1 + \left ( 1 - \chi \right ) \rho _ 2
	$$

* (Voir cours de M. Vincent.)

---

# Modèle bifluide

* Dans ces modèles, chaque phase possède ces propres équations d'évolution
* On augmente ces systèmes de **termes d'échanges** (matière, de QdM et d'énergie) et d'une fraction volumique
* La fermeture de ces termes ainsi que de l'équation de transport de la fraction volumique repose elle aussi sur la thermodynamique hors-équilibre
* Ces modèles, le plus souvent compressibles, s'appliquent aussi bien à des topologies de phases séparées et de phases dispersées

---

$\forall \alpha \in \left \llbracket 1, 2 \right \rrbracket$,
$$
\left \{ \begin{aligned}
\partial _ t \left ( \chi _ \alpha \rho _ \alpha \right ) + \nabla \cdot \left ( \chi _ \alpha \rho _ \alpha \mathbf{u} _ \alpha \right ) & = \Gamma _ \alpha, \\
\partial _ t \left ( \chi _ \alpha \rho _ \alpha \mathbf{u} _ \alpha \right ) + \nabla \cdot \left ( \chi _ \alpha \rho _ \alpha \mathbf{u} _ \alpha \otimes \mathbf{u} _ \alpha \right ) & = - \nabla \left ( \chi _ \alpha p _ \alpha \right ) + \mathbf{M} _ \alpha, \\
\partial _ t \left ( \chi _ \alpha \rho _ \alpha E _ \alpha \right ) + \nabla \cdot \left ( \chi _ \alpha \rho _ \alpha E _ \alpha \mathbf{u} _ \alpha \right ) & = - \nabla \cdot \left ( \chi _ \alpha \mathbf{u} _ \alpha p _ \alpha \right ) + \Pi _ \alpha
\end{aligned} \right .
$$

* Ces équations font apparaître les termes d'échange suivants ($\alpha \in \left \llbracket 1, 2 \right \rrbracket$)

	1. Matière
	$$
	\Gamma _ \alpha
	$$
	1. Quantité de mouvement
	$$
	\mathbf{M} _ \alpha = \Gamma _ \alpha \mathbf{u} _ \alpha ^ \star + p ^ \star _ \alpha \nabla \chi _ \alpha + \mathbf{M} _ \alpha ^ d,
	$$
	1. D'énergie
	$$
	\Pi _ \alpha = \Gamma _ \alpha \Pi ^ \star _ \alpha + \mathbf{M} ^ d _ \alpha \cdot \mathbf{u} _ \alpha ^ \star + p ^ \star \mathbf{u} ^ \star _ \alpha \nabla \chi _ \alpha + \Pi _ \alpha ^ d
	$$

---

* (Les termes visqueux, ainsi que les effets diffusifs de type Fourier, Fick, Soret ou Dufour ont été omis même peuvent bien sûr être ajoutés.)
* Le nombre de ces équations peuvent être réduites en fonctions des équilibres présents

	- Thermique
	$$
	T ^ \alpha = T ^ \beta
	$$
	- Chimique
	$$
	\mu ^ \alpha = \mu ^ \beta
	$$
	- Cinématique
	$$
	\mathbf{u} ^ \alpha = \mathbf{u} ^ \beta
	$$
	- Mécanique
	$$
	p ^ \alpha = p ^ \beta
	$$

---

* Les lois de conservation imposent
$$
\sum _ \alpha \Gamma _ \alpha = 0, \quad \sum _ \alpha \mathbf{M} _ \alpha = 0 \quad \mathrm{et} \quad \sum _ \alpha \Pi _ \alpha = 0
$$
* La condition de saturation (fluides immiscibles) donne
$$
\sum _ \alpha \chi _ \alpha = 1
$$
* Les termes d'échange, ou **flux**, sont exprimés en fonction de quantités supplémentaires
$$
\forall \alpha \in \left \llbracket 1, 2 \right \rrbracket, \quad \mathbf{u} _ \alpha ^ \star, p _ \alpha ^ \star, E _ \alpha ^ \star
$$
* Ces grandeurs sont associées à l'état de chaque fluide au voisinage de l'interface
* La **force** associée aux échanges de masse est la différence de potentiel chimique
$$
\forall \alpha \in \left \llbracket 1, 2 \right \rrbracket, \quad \Gamma _ \alpha = \mathcal{K} \left ( \mu ^ \beta - \mu ^ \alpha \right ), \quad \alpha + \beta = 3
$$
où $\mathcal{K} \ge 0$ (cœfficient de transfert de matière)

---

* De la même manière,
$$
\forall \alpha \in \left \llbracket 1, 2 \right \rrbracket, \quad \mathbf{M} _ \alpha ^ d = \mathcal{D} \left ( \mathbf{u} ^ \beta - \mathbf{u} ^ \alpha \right ), \quad \alpha + \beta = 3
$$
où $\mathcal{D} \ge 0$ (cœfficient de trainée)
* et
$$
\forall \alpha \in \left \llbracket 1, 2 \right \rrbracket, \quad \Pi _ \alpha ^ d = \mathcal{H} \left ( T ^ \beta - T ^ \alpha \right ), \quad \alpha + \beta = 3$$
où $\mathcal{H} \ge 0$ (cœfficient de transfert de chaleur)

---

* En l'absence de tension de surface, les pressions interfaciales sont égales
$$
p _ 1 ^ \star = p _ 2 ^ \star = p ^ \star
$$
* De même, on suppose
$$
\mathbf{u} ^ \star _ 1 = \mathbf{u} _ 2 ^ \star = \mathbf{u} ^ \star
$$
* Jusqu'ici, en dépis de ces fermetures, il manque encore l'équation sur la fraction 

---

Cela peut se faire

* En supposant que l'équilibre thermodynamique est atteint, elle est définie implicitement par une relation de type (ici écrite pour des fluides barotropes)
$$
p _ 1 \left ( \frac{\overline{\rho} _ 1}{\chi _ 1} \right ) = p _ 2 \left ( \frac{\overline{\rho} _ 2}{1 - \chi _ 1} \right )
$$
où $\overline{\rho} _ \alpha \triangleq \chi _ \alpha \rho _ \alpha$ est une variable primaire du système ;
* En écrivant une nouvelle équation de transport
$$
\partial _ t \chi _ \alpha + \left ( \mathbf{u} ^ \star \cdot \nabla \right ) \chi _ \alpha = \mathcal{S} _ \alpha
$$
où
$$
\mathcal{S} _ \alpha = \mathcal{T} \left ( p _ \alpha - p _ \beta \right ), \quad \alpha + \beta = 3
$$
et $\mathcal{T} \ge 0$

---

* Le modèle bifluide le plus général, proposé par Baer \& Nunziato, comporte donc 7 équations
* À l'équilibre chimique (sans transferts de matière entre les phases), le système s'écrit $\forall \alpha \in \left \llbracket 1, 2 \right \rrbracket$,
$$
\partial _ t \left ( \chi _ \alpha \rho _ \alpha \right ) + \partial _ x \left ( \chi _ \alpha \rho _ \alpha u _ \alpha \right ) = 0,
$$
\begin{multline*}
\partial _ t \left ( \chi _ \alpha \rho _ \alpha u _ \alpha \right ) + \partial _ x \left [ \chi _ \alpha \left ( \rho _ \alpha u _ \alpha ^ 2 + p _ \alpha \right ) \right ] = \\
p ^ \star \partial _ x \chi _ \alpha + \mathcal{D} \left ( u _ \beta - u _ \alpha \right ),
\end{multline*}
\begin{multline*}
\partial _ t \left ( \chi _ \alpha \rho _ \alpha E _ \alpha \right ) + \partial _ x \left [ \chi _ \alpha \left ( \rho _ \alpha E _ \alpha + p _ \alpha \right ) u _ \alpha \right ] = \\
p ^ \star u ^ \star \partial _ x \chi _ \alpha + u ^ \star \mathcal{D} \left ( u _ \beta - u _ \alpha \right ) + p ^ \star \mathcal{T} \left ( p _ \beta - p _ \alpha \right ),
\end{multline*}
où $\alpha + \beta = 3$

---

* Ces équations sont complétées par une équation pour le transport de la fraction volumique (une seule, soit $\alpha = 1$ ou $2$ suffit)
$$
\partial _ t \chi _ \alpha + u ^ \star \partial _ x \chi _ \alpha = \mathcal{T} \left ( p _ \alpha - p _ \beta \right )
$$

---

* Le modèle bifluide peut s'écrire sous la forme générique
$$
\partial _ t \mathbf{Q} + \partial _ x \mathbf{F} \left ( \mathbf{Q} \right ) + \mathbf{B} \left ( \mathbf{Q} \right ) \partial _ x \mathbf{Q} = \mathbf{S} \left ( \mathbf{Q} \right )
$$
où la variable primitive et la fonction flux sont définies par
$$
\mathbf{Q} = \left ( \begin{array}{c}
\chi _ 1 \\
\chi _ 1 \rho _ 1 \\
\chi _ 1 \rho _ 1 u _ 1 \\
\chi _ 1 \rho _ 1 E _ 1 \\
\chi _ 2 \rho _ 2 \\
\chi _ 2 \rho _ 2 u _ 2 \\
\chi _ 2 \rho _ 2 E _ 2
\end{array} \right ) \quad \mathrm{et} \quad \mathbf{F} \left ( \mathbf{Q} \right ) = \left ( \begin{array}{c}
0 \\
\chi _ 1 \rho _ 1 u _ 1 \\
\chi _ 1 \left ( \rho _ 1 u _ 1 ^ 2 + p _ 1 \right ) \\
\chi _ 1 \left ( \rho _ 1 E _ 1 + p _ 1 \right ) u _ 1 \\
\chi _ 2 \rho _ 2 u _ 2 \\
\chi _ 2 \left ( \rho _ 2 u _ 2 ^ 2 + p _ 2 \right ) \\
\chi _ 2 \left ( \rho _ 2 E _ 2 + p _ 2 \right ) u _ 2
\end{array} \right ).
$$

---

* Le terme non-conservatif s'écrit
$$
\mathbf{B} \left ( \mathbf{Q} \right ) = \left [ \begin{array}{ccccccc}
\mathbf{C} \left ( \mathbf{Q} \right ) & \mathbf{0} & \mathbf{0} & \mathbf{0} & \mathbf{0} & \mathbf{0} & \mathbf{0}
\end{array} \right ]
$$
où
$$
\mathbf{C} \left ( \mathbf{Q} \right ) = \left ( \begin{array}{c}
u ^ \star \\
0 \\
-p ^ \star \\
-p ^ \star u ^ \star \\
0 \\
p ^ \star \\
p ^ \star u ^ \star
\end{array} \right )
$$

---

* Enfin dans le cas particulier où $\mathcal{H} = 0$ et en l'absence de changement de phase, le terme source s'écrit
$$
\mathbf{S} \left ( \mathbf{Q} \right ) = \left ( \begin{array}{c}
\mathcal{T} \left ( p _ 1 - p _ 2 \right ) \\
0 \\
\mathcal{D} \left ( u _ 2 - u _ 1 \right ) \\
u ^ \star \mathcal{D} \left ( u _ 2 - u _ 1 \right ) + p ^ \star \mathcal{T} \left ( p _ 2 - p _ 1 \right ) \\
0 \\
\mathcal{D} \left ( u _ 1 - u _ 2 \right ) \\
u ^ \star \mathcal{D} \left ( u _ 1 - u _ 2 \right ) + p ^ \star \mathcal{T} \left ( p _ 1 - p _ 2 \right )
\end{array} \right )
$$

---

$$
\partial _ t \mathbf{Q} + \partial _ x \mathbf{F} \left ( \mathbf{Q} \right ) + \mathbf{B} \left ( \mathbf{Q} \right ) \partial _ x \mathbf{Q} = \mathbf{S} \left ( \mathbf{Q} \right )
$$

* Ce modèle n'a pas de forme conservative, ce qui pose un problème du point de vue de sa résolution numérique (conditions de Rankine-Hugoniot?)
* Une bonne nouvelle cependant : la vitesse interfaciale ($u ^ \star$) n'apparait ni dans la variable $\mathbf{Q}$, ni dans la fonction flux $\mathbf{F} \left ( \mathbf{Q} \right )$, ce qui simplifie l'analyse des propriétés du système

---

* On peut montrer que les valeurs propres de la matrice jacobienne
$$
\mathbf{F} ' \left ( \mathbf{Q} \right ) + \mathbf{B} \left ( \mathbf{Q} \right )
$$
sont toujours réelles
* Ces valeurs propres sont
$$
\begin{array}{ccc}
& u ^ \star & \\
u _ 1 - c _ 1 & u _ 1 & u _ 1 + c _ 1 \\
u _ 2 - c _ 2 & u _ 2 & u _ 2 + c _ 2
\end{array}
$$
* Dans les cas où $u ^ \star \ne u _ 1 \pm c_ 1$ et $u ^ \star \ne u _ 2 \pm c _2$, on montre que les champs associés aux valeurs propres

	- $u _ \alpha$ sont **linéairement dégénérés** ;
	- $u _ \alpha \pm c _ \alpha$ sont **vraiment non linéaires**.

---

* Il est souvent souhaitable d'associer à la valeur propre $u ^ \star$ un champs linéairement dégénéré
* On montre que cette propriété est satisfaite lorsque
$$
u ^ \star = \omega u _ 1 + \left ( 1 - \omega \right ) u _ 2
$$
où
$$
\omega = \frac{\psi \chi _ 1 \rho _ 1}{\psi \chi _ 1 \rho _ 1 + \left ( 1 - \psi \right ) \chi _ 2 \rho _ 2}
$$
et $\psi \in \left [ 0, 1 \right ]$

---

* Pour fermer le système, il reste à spécifier $p ^ \star$
* On peut montrer que
\begin{multline*}
\partial _ t \left ( \sum _ \alpha \chi _ \alpha \rho _ \alpha s _ \alpha \right ) + \partial _ x \left ( \sum _ \alpha \chi _ \alpha \rho _ \alpha s _ \alpha u _ \alpha \right ) = \\
\sum _ \alpha \frac{1}{T _ \alpha} \left ( p ^ \star - p _ \alpha \right ) \left ( u ^ \star - u _ \alpha \right ) \partial _ x \chi _ \alpha \\
\, + \sum _ \alpha \frac{1}{T _ \alpha} \left [ \mathcal{D} \left ( u _ \beta - u _ \alpha \right ) \left ( u ^ \star - u _ \alpha \right ) + \mathcal{T} \left ( p _ \beta - p _ \alpha \right ) \left ( p ^ \star - p _ \alpha \right ) \right ]
\end{multline*}

---

* Si comme pour la vitesse, on souhaite écrire la pression interfaciale comme une combinaison convexe des pression de chaque phase,
$$
p ^ \star = \mu p _ 1 + \left ( 1 - \mu \right ) p _ 2,
$$
on montre alors que la dernière ligne de l'équation précédente peut s'écrire
$$
\left ( \frac{1 - \omega}{T _ 1} + \frac{\omega}{T _ 2} \right ) \mathcal{D} \left ( u _ 2 - u _ 1 \right ) ^ 2 + \left ( \frac{1 - \mu}{T _ 1} + \frac{\mu}{T _ 2} \right ) \mathcal{T} \left ( p _ 2 - p _ 1 \right ) ^ 2 \ge 0
$$
qui est donc une quantité signée
* L'idée est alors d'annuler le premier terme, à savoir
$$
\sum _ \alpha \frac{1}{T _ \alpha} \left ( p ^ \star - p _ \alpha \right ) \left ( u ^ \star - u _ \alpha \right ) \partial _ x \chi _ \alpha
$$
ce qui est réalisé en imposant
$$
\mu = \frac{\left ( 1 - \omega \right ) T _ 2}{\omega T _ 1 + \left ( 1 - \omega \right ) T _ 2}
$$

# Pour aller plus loin

Qu'est ce qui fait un bon modèle ?

1. Consistence thermodynamique ;
1. **Problème bien posé mathématiquement** ;
1. Pas de dissipation excessive (petites structures...).

---

$$
A \partial _ {xx} u + 2B \partial _ {xy} u + C \partial _ {yy} u + D \partial _ x u + E \partial _ y u + F u + G = 0
$$

* Discriminant
$$
B ^ 2 - A C
$$

	- $\Delta > 0$ : équations hyperboliques ;
	- $\Delta = 0$ : équations paraboliques ;
	- $\Delta < 0$ : équations elliptiques.

