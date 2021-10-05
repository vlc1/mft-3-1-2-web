---
title: Thermodynamique hors équilibre
date: MFT-3-1-2 2021/2022
author: Vincent Le Chenadec
header-includes:
- \usepackage{siunitx}
- \DeclareSIUnit\nothing{\relax}
...

# Introduction

* La plupart des phénomènes physiques qui nous entourent transportent de la masse et de la chaleur en présence (ou non) de réactions chimiques.
* Dans ces procédés, les systèmes utilisés ne sont jamais à l'équilibre, et la thermodynamique classique ne suffit donc pas à les décrire.
* La thermodynamique hors équilibre permet notamment de

	- Décrire précisément le couplage entre les phénomènes importants ;
	- Donner une approche systématique pour la modélisation de tous types de transport ;
  - Quantifier la production d'entropie.

---

## Repères historiques

* La thermodynamique hors équilibre décrit les phénomènes de transport dans des systèmes qui ne sont pas globalement à l'équilibre.
* La clef de voute de ce formalisme est le second principe de la thermodynamique.
* Contributions historiques depuis Thomson (thermoélectricité, 1856) : Boltzmann, Nernst, Duhem, Jauman et Einstein.
* En 1931, Onsager propose le principe de la thermodynamique hors équilibre qui systématise ces travaux passés. Sa contribution est récompensée en 1968 par le prix Nobel de chimie.

---

## Le second principe

* Dans la formulation de Onsager, le second principe relie le terme de production d'entropie à des paires conjuguées formées de flux, dénotés $J _ i$, et de forces, dénotées $X _ i$.
* Il s'énonce alors
$$
\sigma = \sum_i J_i X_i \ge 0
$$
où $\sigma$ dénote la production d'entropie.
* On modélise chaque flux par une combinaison linéaire des forces,
$$
J_i  = \sum_j L_{i j} X_j.
$$

---

## Les relations de réciprocité d'Onsager

* Les relations de réciprocité d'Onsager garantissent la positivité du terme de création d'entropie.
* Elles s'écrivent,
$$
L_{j i} = L_{i j}.
$$

---

* La mise en pratique de cette théorie requiert avant tout l'identification d'un ensemble de variables extensives indépendantes, $\alpha _ i$.
* Les flux et forces s'écrivent alors
$$
J _ i \triangleq \frac{\mathrm{d} \alpha_i}{\mathrm{d} t} \quad \mathrm{et} \quad X _ i \triangleq \left ( \frac{\partial S}{\partial \alpha _ i} \right ) _ {\alpha _ {j \ne i}}
$$
où $S$ dénote l'entropie du système.
* Dans les années 40, Meixner et Prigogine poursuivent les travaux d'Onsager et les généralisent aux systèmes continus.

# Flux de modèles simples

* Une modélisation précise des flux est nécessaire à toute application en ingénierie.
* Afin d'illustrer son apport, examinons les modèles les plus simples de transport de chaleur et de masse avec ceux de la thermodynamique hors équilibre.

---

* La loi de Fourier par exemple relie le flux de chaleur au gradient de température
$$
J' _ q = - \lambda \frac{\mathrm{d} T}{\mathrm{d} x}.
$$ {#eq:fourier}
	Ici, $\lambda$ dénote la conductivité thermique (en $\si{\kilo\gram\metre\per\second\cubed\per\kelvin}$) et $T$ (en $\si{\kelvin}$) la température absolue.
* De la même manière, la loi de Fick modélise la diffusion en reliant le flux de masse d'un constituant au gradient de sa concentration molaire,
$$
J = - D \frac{\mathrm{d} c}{\mathrm{d} x}.
$$ {#eq:fick}
	Ici, $D$ dénote la diffusivité (en $\si{\metre\squared\per\second}$) et $c$ la concentration molaire (en $\si{\mol\per\metre\cubed}$).

---

* Les flux définis par les équations [-@eq:fourier;-@eq:fick] ne sont causés que par un seul gradient, donc une seule force.
* La loi de Fick nous dit par exemple qu'il n'y a pas de flux de matière en l'absence de gradient de concentration.
* Or l'expérience nous dit qu'un gradient de température peut donner lieu à un flux de matière.
* Négliger ces effets peut conduire à des prédictions erronées.
* Aux interfaces, cela peut même mener à une incompatibilité avec le premier principe de la thermodynamique.

---

* La thermodynamique hors équilibre généralise les équations [-@eq:fourier;-@eq:fick] pour prendre en compte ces forces.
* La théorie donne une base commune à toutes les équations de transport.
* Cela signifie qu'elle peut modéliser des phénomènes aussi variés que l'hydrodynamique des fluides visqueux, la diffusion d'espèce, la conduction de chaleur ou les réactions chimiques.

# Flux de la thermodynamique hors équilibre

* Il existe donc un couplage entre plusieurs flux, que la simplicité des équations [-@eq:fourier;-@eq:fick] ne permet pas de décrire.
* Nous verrons ce semestre qu'une description plus précise des flux de chaleur et de matière est donnée par les relations
$$
J' _ q = L _ {q q} \frac{\mathrm{d}}{\mathrm{d} x} \left ( \frac{1}{T} \right ) + L _ {q \mu} \left ( - \frac{1}{T} \frac{\mathrm{d} \mu _ T}{\mathrm{d} x} \right ),
$$
et
$$
J = L_{\mu q} \frac{\mathrm{d}}{\mathrm{d} x} \left ( \frac{1}{T} \right ) + L _ {\mu \mu} \left ( - \frac{1}{T} \frac{\mathrm{d} \mu _ T}{\mathrm{d} x} \right ).
$$

---

* Les paires conjuguées ainsi mises en évidence sont

| Flux  | Forces |
|:-----:|:------:|
| $J'_q$ | $\frac{\mathrm{d}}{\mathrm{d} x} \left ( \frac{1}{T} \right )$ |
| $J$   | $-\frac{1}{T} \frac{\mathrm{d} \mu _ T}{\mathrm{d} x}$ |

* (Nous reviendrons plus tard sur la définition de $\mu _ T$, retenons pour l'instant qu'il s'agit d'un potentiel chimique.)
* $L _ {q q}$, $L _ {q \mu}$, $L_{\mu q}$ et $L _ {\mu \mu}$ sont appelés cœfficients phénoménologiques ou cœfficients de Onsager.
* Ils doivent être mesurés.
* Ils forment une matrice dont les éléments diagonaux ($L _{qq}$ et $L_{\mu\mu}$) peuvent être reliés à $\lambda$ et $D$.

---

* On sait enfin que les relations de réciprocité d'Onsager réduisent le nombre de cœfficients de couplage à déterminer puisque
$$
L _ {q \mu} = L_{\mu q}.
$$
* On voit donc que dans ce cas précis, la (puisqu'il n'y en a qu'une) relation d'Onsager réduit le nombre de cœfficients indépendants de $4$ à $3$.
* Les cœfficients de couplage peuvent être plus ou moins grands.
* Nous verrons qu'une grande valeur correspond à une faible création d'entropie.
* Enfin, dans les cas où $L _ {q \mu}$ est difficile à mesurer, on peut mesurer $L _ {\mu q}$ et inversement.
* Nous verrons enfin que les forces conjuguées peuvent être obtenues de manière systématique.

---

**Exercice** -- Calculer le flux de chaleur $J' _ q$ en fonction du gradient $\frac{\mathrm{d}}{\mathrm{d} x} \left ( \frac{1}{T} \right )$ lorsqu'il n'y a pas de diffusion de matière ($J = 0$).

