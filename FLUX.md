---
title: Flux de matière et référentiel
date: MFT-3-1-2 2021/2022
author: Vincent Le Chenadec
header-includes:
- \usepackage{siunitx}
- \usepackage{amsmath}
- \usepackage{stmaryrd}
...

* Il est important de noter que la définition flux de matière du référentiel dans lequels ils sont exprimés.
* En effet, le flux de matière d'un constituant $A$ relative à un référentiel est défini par
$$
J _ A = c _ A \left ( v _ A - v _ \mathrm{ref} \right )
$$
où

	- $c _ A$ dénote la concentration (en $\si{\mole\per\meter\cubed}$) ;
	- $v _ A$ dénote la vitesse de $A$ (en $\si{\meter\per\second}$) ;
	- $v _ \mathrm{ref}$ dénote la vitesse de référence.

* Plusieurs choix de $v _ \mathrm{ref}$ sont possibles.

# Référentiel d'observation

* On peut tout à fait choisir
$$
v _ \mathrm{ref} = 0,
$$
auquel cas
$$
J _ A ^ \mathrm{fixe} = c _ A v _ A.
$$

# Référentiel du solvant

* Lorsque la concentration d'un constituant (le solvant) domine celle des autres, on peut définir les flux de matière par rapport à sa vitesse.
* On écrira alors
$$
J _ A ^ \mathrm{solv} = c _ A \left ( v _ A - v _ \mathrm{solv} \right ).
$$

# Référentiel molaire

* Plusieurs moyennes peuvent également être définie.
* Lorsque la pondération est faite par la composition, on parlera de référentiel molaire
$$
v _ \mathrm{molaire} = \frac{1}{c} \sum _ {i = 1} ^ n c _ i v _ i.
$$
* Ce choix mène à
$$
J _ A ^ \mathrm{molaire} = c _ A \left ( v _ A - v _ \mathrm{molaire} \right ).
$$

# Référence volumique

* On peut également pondérer par les volumes partiels molaires, pour trouver
$$
v _ \mathrm{vol} = \sum _ {i = 1} ^ n c _ i V _ i v _ i.
$$
(on rappelle en effet l'identité
$$
\sum _ {i = 1} ^ n c _ i V _ i = 1
$$
démontrée à la séance précédente.)
* Le flux de matière s'écrit alors
$$
J _ A ^ \mathrm{vol} = c _ A \left ( v _ A - v _ \mathrm{vol} \right ).
$$

# Référentre barycentrique

* Le référentiel le plus utilisé en mécanique des fluides est le référentiel barycentrique.
$$
v _ \mathrm{bar} = \frac{1}{\rho} \sum _ {i = 1} ^ n \rho _ i v _ i.
$$
* Le flux de matière s'écrit alors
$$
J _ A ^ \mathrm{bar} = c _ A \left ( v _ A - v _ \mathrm{bar} \right ).
$$

