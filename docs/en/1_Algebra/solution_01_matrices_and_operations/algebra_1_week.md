# 📚 Lineer Cebir: Kapsamlı Çalışma Notları / Linear Algebra: Comprehensive Notes

Bu dosya, Bilgisayar Bilimleri (CS) için temel teşkil eden Lineer Cebir konularını içerir.
This file contains fundamental Linear Algebra topics for Computer Science.

---

## 1. Matrisler ve Determinant / Matrices and Determinants

Matrisler, verileri depolamanın ve dönüştürmenin en temel yoludur.
Matrices are the most fundamental way of storing and transforming data.

### 1.1. Determinant Hesabı ($2 \times 2$) / Calculating the Determinant
Bir $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ matrisi için:
$$\text{det}(A) = |A| = ad - bc$$

> **Önemli / Important:** Eğer $\text{det}(A) = 0$ ise, bu matris **Singüler (Tekil)** bir matristir ve tersi yoktur.
> If $\text{det}(A) = 0$, the matrix is **Singular** and has no inverse.

---

## 2. Ters Matris / Inverse Matrix ($A^{-1}$)

Bir matrisin tersi, sistem denklemlerini çözmek için kullanılır ($Ax = b \Rightarrow x = A^{-1}b$).
The inverse of a matrix is used to solve systems of equations.

$2 \times 2$ bir matrisin tersi şu formülle bulunur / Formula for the inverse:
$$A^{-1} = \frac{1}{\text{det}(A)} \begin{pmatrix} d & -b \\ -c & a \end{pmatrix}$$

**Örnek / Example:**
$A = \begin{pmatrix} 4 & 7 \\ 2 & 6 \end{pmatrix}$ ise $\text{det}(A) = 10$.
$$A^{-1} = \begin{pmatrix} 0.6 & -0.7 \\ -0.2 & 0.4 \end{pmatrix}$$

---

## 3. Özdeğerler ve Özvektörler / Eigenvalues and Eigenvectors

Bilgisayar grafiklerinde ve Google'ın PageRank algoritmasında kullanılır.
Used in computer graphics and Google's PageRank algorithm.

### 3.1. Karakteristik Denklem / Characteristic Equation
Bir $A$ matrisinin özdeğerlerini ($\lambda$) bulmak için / To find the eigenvalues:
$$\text{det}(A - \lambda I) = 0$$

### 3.2. Özvektör Mantığı / Eigenvector Concept
Bir matris (dönüşüm), bir vektörün yönünü değiştirmeden sadece onu uzatıyor veya kısaltıyorsa, o vektör **Özvektördür**:
If a transformation only scales a vector without changing its direction, that vector is an **Eigenvector**:
$$A\mathbf{v} = \lambda\mathbf{v}$$

---

## 4. Matris Çarpımı Kuralları / Rules of Matrix Multiplication

1. **Sıra Önemlidir / Order Matters:** $A \cdot B \neq B \cdot A$ (Genellikle / Generally).
2. **Boyut Kuralı / Dimension Rule:** $m \times n$ bir matris ile $n \times p$ bir matris çarpılabilir. Sonuç $m \times p$ olur.
An $m \times n$ matrix can be multiplied by an $n \times p$ matrix.

---

## 5. Uygulama Sorusu / Practice Question

**Soru / Question:** $A = \begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix}$ matrisinin tersi var mıdır?
Does the matrix have an inverse?

**Çözüm / Solution:**
$\text{det}(A) = (1 \cdot 4) - (2 \cdot 2) = 0$.
Determinant **0** olduğu için bu matrisin tersi **YOKTUR**.
Since the determinant is **0**, this matrix has **NO** inverse.

---
**Prepared by Beril Sila Torun - 2026**