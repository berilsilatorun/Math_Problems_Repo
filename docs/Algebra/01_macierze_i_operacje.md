## Macierze i podstawowe operacje

### Zad 1.

Dla macierzy

$$
A=\begin{pmatrix}1 & 2\\ 3 & 4\end{pmatrix} \quad \text{i} \quad B=\begin{pmatrix}0 & -1\\ 2 & 1\end{pmatrix}
$$

oblicz

- $A+B$
- $A-B$
- $2A$
- $3B-2A$
- $A\cdot B$
- sprawdź, czy $A\cdot B = B\cdot A$.

### Zad 2.

Dla macierzy

$$
A=\begin{pmatrix}1 & 0\\ 0 & 2\end{pmatrix}, 
\quad
B =\begin{pmatrix}2 & 0\\ 0 & 4\end{pmatrix}, 
\quad
C=\begin{pmatrix}4 & 0\\ 0 & 8\end{pmatrix},
\quad
D=\begin{pmatrix}8 & 0\\ 0 & 16\end{pmatrix}
$$

   sprawdź, czy

$$
A\cdot B\cdot C\cdot D = B\cdot A\cdot D\cdot C = D\cdot C\cdot B\cdot A.
$$


### Zad 3.

Dana jest macierz

$$
C=\begin{pmatrix}
1 & 0 & 2\\
-1 & 3 & 1\\
0 & 2 & -1
\end{pmatrix}.
$$

Wyznacz macierz otrzymaną po przestawieniu wierszy: zamień 1. i 3. wiersz, a następnie dodaj do 2. wiersza dwukrotność nowego 1. wiersza. Zapisz wszystkie kroki dla każdej operacji.

### Zad 4.

Dla wektorów kolumnowych $u=(1,-2,3)^{\top}$ oraz $v=(2,0,-1)^{\top}$ zapisz je jako macierze i oblicz $u+v$, $u-v$ oraz iloczyny macierzowe $u\,v^{\top}$ i $v\,u^{\top}$. Jaka jest rząd macierzy $u\,v^{\top}$?

### Zad 5.

Pokaż, że macierz diagonalna $D=\operatorname{diag}(2,-3,5)$ jest przemienna z dowolną macierzą diagonalną $E=\operatorname{diag}(a,b,c)$. Dodatkowo oblicz $D^{3}$ oraz, jeśli istnieje, $D^{-1}$.

### Zad 6.

$\star$ Dla macierzy
 
$$
P=\begin{pmatrix}1 & 1 & 0\\ 0 & 1 & 1\\ 1 & 0 & 1\end{pmatrix}
$$

oblicz $P^{2}$ i $P^{3}$. Czy ciąg $P^{n}$ ma zauważalny wzorzec dla $n=1,2,3$?

### Zad 7. 

$\star$ Przykład kodowania rotacji

Policz iloczyn macierzy rotacji o kącie $\theta$ w przestrzeni 2D:

$$
R(\theta) = \begin{pmatrix}
\cos\theta & -\sin\theta\\
\sin\theta & \cos\theta
\end{pmatrix}
$$

Sprawdź, że $R(\theta_1)R(\theta_2) = R(\theta_1 + \theta_2)$.

### Zad 8. 

$\star$ Wiedząc, że

$$
\begin{aligned}
\sin(x)&=1-\frac{x^{2}}{2!}+\frac{x^{4}}{4!}-\frac{x^{6}}{6!}+\ldots\\
\cos(x)&=x-\frac{x^{3}}{3!}+\frac{x^{5}}{5!}-\frac{x^{7}}{7!}+\ldots
\end{aligned}
$$

pokaż, że macierz rotacji $R(\theta)$ może być zapisana jako

$$
R(\theta) = I +  A + \frac{1}{2!} A^{2} + \frac{1}{3!} A^{3} + \ldots 
$$

gdzie

$$
A = \begin{pmatrix}0 & -\theta\\ \theta & 0\end{pmatrix}
$$

### Zad 9. 

$\star\star$ Macierze Pauliego są zdefiniowane jako:

$$
\sigma_x = \begin{pmatrix}0 & 1\\ 1 & 0\end{pmatrix}, \quad
\sigma_y = \begin{pmatrix}0 & -i\\ i & 0\end{pmatrix}, \quad
\sigma_z = \begin{pmatrix}1 & 0\\ 0 & -1\end{pmatrix}
$$

gdzie $i$ to jednostka urojona. Sprawdź, że:

- $\sigma_x^2 = \sigma_y^2 = \sigma_z^2 = I$ (macierz jednostkowa)
- $\sigma_x\sigma_y = i\sigma_z$, $\sigma_y\sigma_z = i\sigma_x$, $\sigma_z\sigma_x = i\sigma_y$
- $\{\sigma_i, \sigma_j\} = 2\delta_{ij}I$ (antykomutator)
