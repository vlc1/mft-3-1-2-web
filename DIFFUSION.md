---
title: Théorie de la diffusion de Maxwell-Stefan
date: MFT-3-1-2 2021/2022
author: Vincent Le Chenadec
header-includes:
- \usepackage{siunitx}
- \usepackage{amsmath}
- \usepackage{stmaryrd}
...

* La théorie de la diffusion de Fick est la plus simple
$$
J = -D \frac{\mathrm{d} c}{\mathrm{d} x}
$$
* Sa simplicité cependant a ses limites car elle ne prend notamment pas en compte la diffusion d'un constituant due aux variations de concentration des autres constituants
* Les équations de Maxwell-Stefan prennent ces couplages entre les flux diffusifs en compte

# Écoulement isotherme et isobare à 3 constituants

* On considère le cas isotherme et isobare, avec 3 constituants : $\mathrm{A}$, $\mathrm{B}$ et $\mathrm{C}$
* Dans ces conditions, le terme de production d'entropie s'écrit
$$
\sigma = J _ \mathrm{A} \left ( -\frac{1}{T} \frac{\mathrm{d} \mu _ \mathrm{A}}{\mathrm{d} x} \right ) + J _ \mathrm{B} \left ( -\frac{1}{T} \frac{\mathrm{d} \mu _ \mathrm{B}}{\mathrm{d} x} \right ) + J _ \mathrm{C} \left ( -\frac{1}{T} \frac{\mathrm{d} \mu _ \mathrm{C}}{\mathrm{d} x} \right )
$$
* Or
$$
\forall i \in \left \{ \mathrm{A}, \mathrm{B}, \mathrm{C} \right \}, \quad J _ i = c _ i v _ i
$$
d'où on déduit
$$
\sigma = v _ \mathrm{A} \left ( -\frac{c _ \mathrm{A}}{T} \frac{\mathrm{d} \mu _ \mathrm{A}}{\mathrm{d} x} \right ) + v _ \mathrm{B} \left ( -\frac{c _ \mathrm{B}}{T} \frac{\mathrm{d} \mu _ \mathrm{B}}{\mathrm{d} x} \right ) + v _ \mathrm{C} \left ( -\frac{c _ \mathrm{C}}{T} \frac{\mathrm{d} \mu _ \mathrm{C}}{\mathrm{d} x} \right )
$$

---

* On ferme le système en supposant que les relations linéaires suivantes
$$
\begin{aligned}
-\frac{c _ \mathrm{A}}{T} \frac{\mathrm{d} \mu _ \mathrm{A}}{\mathrm{d} x} & = r _ \mathrm{AA} c _ \mathrm{A} c _ \mathrm{A} v _ \mathrm{A} + r _ \mathrm{AB} c _ \mathrm{A} c _ \mathrm{B} v _ \mathrm{B} + r _ \mathrm{AC} c _ \mathrm{A} c _ \mathrm{C} v _ \mathrm{C}, \\
-\frac{c _ \mathrm{B}}{T} \frac{\mathrm{d} \mu _ \mathrm{B}}{\mathrm{d} x} & = r _ \mathrm{BA} c _ \mathrm{B} c _ \mathrm{A} v _ \mathrm{A} + r _ \mathrm{BB} c _ \mathrm{B} c _ \mathrm{B} v _ \mathrm{B} + r _ \mathrm{BC} c _ \mathrm{B} c _ \mathrm{C} v _ \mathrm{C}, \\
-\frac{c _ \mathrm{C}}{T} \frac{\mathrm{d} \mu _ \mathrm{C}}{\mathrm{d} x} & = r _ \mathrm{CA} c _ \mathrm{C} c _ \mathrm{A} v _ \mathrm{A} + r _ \mathrm{CB} c _ \mathrm{C} c _ \mathrm{B} v _ \mathrm{B} + r _ \mathrm{CC} c _ \mathrm{C} c _ \mathrm{C} v _ \mathrm{C}
\end{aligned}
$$
* Les relations de Onsager s'écrivent
$$
r _ \mathrm{AB} = r _ \mathrm{BA}, \quad r _ \mathrm{AC} = r _ \mathrm{CA} \quad \mathrm{et} \quad r _ \mathrm{BC} = r _ \mathrm{CB}
$$

---

* On déduit de la relation de Gibbs-Duhem ($\mathrm{d} T = 0$ et $\mathrm{d} p = 0$)
$$
c _ \mathrm{A} \frac{\mathrm{d} \mu _ \mathrm{A}}{\mathrm{d} x} + c _ \mathrm{B} \frac{\mathrm{d} \mu _ \mathrm{B}}{\mathrm{d} x} + c _ \mathrm{C} \frac{\mathrm{d} \mu _ \mathrm{C}}{\mathrm{d} x} = 0
$$
et de l'invariance par translation (invariance galiléenne) le système d'équations suivant
$$
\begin{aligned}
r _ \mathrm{AA} c _ \mathrm{A} c _ \mathrm{A} + r _ \mathrm{AB} c _ \mathrm{A} c _ \mathrm{B} + r _ \mathrm{AC} c _ \mathrm{A} c _ \mathrm{C} & = 0, \\
r _ \mathrm{BA} c _ \mathrm{B} c _ \mathrm{A} + r _ \mathrm{BB} c _ \mathrm{B} c _ \mathrm{B} + r _ \mathrm{BC} c _ \mathrm{B} c _ \mathrm{C} & = 0, \\
r _ \mathrm{CA} c _ \mathrm{C} c _ \mathrm{A} + r _ \mathrm{CB} c _ \mathrm{C} c _ \mathrm{B} + r _ \mathrm{CC} c _ \mathrm{C} c _ \mathrm{C} & = 0
\end{aligned}
$$
* De ces $3 + 3 = 6$ relations on déduit que seules $3$ composantes de la matrice $r _ {ij}$ sont indépendantes

# Les équations de Maxwell-Stefan

* Ces équations sont obtenues en éliminant les résistances principales, à savoir $r _ \mathrm{AA}$, $r _ \mathrm{BB}$ et $r _ \mathrm{CC}$
* Elles s'écrivent alors
$$
\begin{aligned}
\frac{c _ \mathrm{A}}{T} \frac{\mathrm{d} \mu _ \mathrm{A}}{\mathrm{d} x} & = r _ \mathrm{AB} c _ \mathrm{A} c _ \mathrm{B} \left ( v _ \mathrm{A} - v _ \mathrm{B} \right ) + r _ \mathrm{AC} c _ \mathrm{A} c _ \mathrm{C} \left ( v _ \mathrm{A} - v _ \mathrm{C} \right ), \\
\frac{c _ \mathrm{B}}{T} \frac{\mathrm{d} \mu _ \mathrm{B}}{\mathrm{d} x} & = r _ \mathrm{BA} c _ \mathrm{B} c _ \mathrm{A} \left ( v _ \mathrm{B} - v _ \mathrm{A} \right ) + r _ \mathrm{BC} c _ \mathrm{B} c _ \mathrm{C} \left ( v _ \mathrm{B} - v _ \mathrm{C} \right ), \\
\frac{c _ \mathrm{C}}{T} \frac{\mathrm{d} \mu _ \mathrm{C}}{\mathrm{d} x} & = r _ \mathrm{CA} c _ \mathrm{C} c _ \mathrm{A} \left ( v _ \mathrm{C} - v _ \mathrm{A} \right ) + r _ \mathrm{CB} c _ \mathrm{C} c _ \mathrm{B} \left ( v _ \mathrm{C} - v _ \mathrm{B} \right ),
\end{aligned}
$$
* On déduit des relations de Gibbs-Duhem et Onsager que ces équations sont équivalentes à
$$
\begin{aligned}
\frac{c _ \mathrm{A}}{T} \frac{\mathrm{d} \mu _ \mathrm{A}}{\mathrm{d} x} & = r _ \mathrm{AB} c _ \mathrm{A} c _ \mathrm{B} \left ( v _ \mathrm{A} - v _ \mathrm{B} \right ) + r _ \mathrm{AC} c _ \mathrm{A} c _ \mathrm{C} \left ( v _ \mathrm{A} - v _ \mathrm{C} \right ), \\
\frac{c _ \mathrm{B}}{T} \frac{\mathrm{d} \mu _ \mathrm{B}}{\mathrm{d} x} & = r _ \mathrm{AB} c _ \mathrm{B} c _ \mathrm{A} \left ( v _ \mathrm{B} - v _ \mathrm{A} \right ) + r _ \mathrm{BC} c _ \mathrm{B} c _ \mathrm{C} \left ( v _ \mathrm{B} - v _ \mathrm{C} \right )
\end{aligned}
$$

---

* Les c\oe{}fficients de diffusion de Maxwell-Stefan sont définis en fonction des résistivités par
$$
\mathcal{D} _ \mathrm{AB} = -\frac{R}{c r _ \mathrm{AB}}, \quad \mathcal{D} _ \mathrm{AC} = -\frac{R}{c r _ \mathrm{AC}} \quad \mathrm{et} \mathcal{D} _ \mathrm{BC} = -\frac{R}{c r _ \mathrm{BC}}
$$
ce qui mène à
$$
\begin{aligned}
-\frac{1}{R T} \frac{\mathrm{d} \mu _ \mathrm{A}}{\mathrm{d} x} & = \frac{x _ \mathrm{B}}{\mathcal{D} _ \mathrm{AB}} \left ( v _ \mathrm{A} - v _ \mathrm{B} \right ) + \frac{x _ \mathrm{C}}{\mathcal{D} _ \mathrm{AC}} \left ( v _ \mathrm{A} - v _ \mathrm{C} \right ), \\
-\frac{1}{R T} \frac{\mathrm{d} \mu _ \mathrm{B}}{\mathrm{d} x} & = \frac{x _ \mathrm{A}}{\mathcal{D} _ \mathrm{AB}} \left ( v _ \mathrm{B} - v _ \mathrm{A} \right ) + \frac{x _ \mathrm{C}}{\mathcal{D} _ \mathrm{BC}} \left ( v _ \mathrm{B} - v _ \mathrm{C} \right )
\end{aligned}
$$

---

* Pour un mélange idéal de gaz parfaits, le potentiel chimique est défini par
$$
\mu _ i = \mu _ i ^ \minuso \left ( T \right ) + R T \ln \left ( x _ i p \right )
$$
d'où ou déduit (à $p$ et $T$ constants)
$$
\begin{aligned}
-\frac{\mathrm{d} x _ \mathrm{A}}{\mathrm{d} x} & = \frac{x _ \mathrm{B}}{\mathcal{D} _ \mathrm{AB}} \left ( v _ \mathrm{A} - v _ \mathrm{B} \right ) + \frac{x _ \mathrm{C}}{\mathcal{D} _ \mathrm{AC}} \left ( v _ \mathrm{A} - v _ \mathrm{C} \right ) \\
-\frac{\mathrm{d} x _ \mathrm{B}}{\mathrm{d} x} & = \frac{x _ \mathrm{A}}{\mathcal{D} _ \mathrm{AB}} \left ( v _ \mathrm{B} - v _ \mathrm{A} \right ) + \frac{x _ \mathrm{C}}{\mathcal{D} _ \mathrm{BC}} \left ( v _ \mathrm{B} - v _ \mathrm{C} \right )
\end{aligned}
$$

---

* Il existe plusieurs règles possibles pour relier les c\oe{}fficients de diffusivité à leurs valeurs dans les limites pures
* La règle de Vignes par exemple
$$
\ln \mathcal{D} _ \mathrm{AB} = x _ \mathrm{A} \lim _ {x _ \mathrm{A} \to 1} \ln \mathcal{D} _ \mathrm{AB} + x _ \mathrm{B} \lim _ {x _ \mathrm{B} \to 1} \ln \mathcal{D} _ \mathrm{AB}
$$
ou celle de Darken
$$
\mathcal{D} _ \mathrm{AB} = x _ \mathrm{A} \lim _ {x _ \mathrm{A} \to 1} \mathcal{D} _ \mathrm{AB} + x _ \mathrm{B} \lim _ {x _ \mathrm{B} \to 1} \mathcal{D} _ \mathrm{AB}
$$

