# LISTA ZADAŃ NR 5: Twierdzenia graniczne i aproksymacje

## Zadanie 1
**Twierdzenie Poissona – rzadkie błędy**

Prawdopodobieństwo, że produkt poddawany próbie nie wytrzyma tej próby wynosi $p=0,01$. Obliczyć prawdopodobieństwo, że wśród 200 takich produktów (niezależnie poddanych próbie) co najwyżej 2 nie wytrzymają próby

*Cel zadania: Pokazanie, jak rozkład dwumianowy (dla dużego $n$ i małego $p$) zbiega do rozkładu Poissona. Jest to klasyczne zastosowanie twierdzenia granicznego dla rzadkich zdarzeń (np. błędy w kodzie, awarie serwerów)*.

## Zadanie 2
**Aproksymacja Poissona – kontrola jakości**

Prawdopodobieństwo wyprodukowania sztuki wadliwej wynosi $p=0,02$. Obliczyć prawdopodobieństwo, że w partii towaru liczącej 300 sztuk znajdzie się:

a) zero sztuk wadliwych,
b) jedna sztuka wadliwa,
c) dwie sztuki wadliwe,
d) co najmniej trzy sztuki wadliwe.

*Wskazówka: Zastosować przybliżenie rozkładem Poissona z parametrem $\lambda = np$*.

## Zadanie 3
**Aproksymacja Poissona – niezawodność systemów**

Urządzenie składa się między innymi z 750 lamp. Prawdopodobieństwo awarii każdej lampy w ciągu jednej doby pracy urządzenia jest jednakowe i wynosi $p=0,004$. Obliczyć prawdopodobieństwo, że w ciągu jednej doby pracy urządzenia ulegnie awarii:

a) 0 lamp,
b) 1 lampa,
c) 2 lampy,
d) co najmniej 3 lampy.

*Komentarz: Zadanie to obrazuje stabilność dużych systemów składających się z wielu zawodnych elementów*.

## Zadanie 4
**Centralne Twierdzenie Graniczne – sumowanie błędów**

Pewien przyrząd pomiarowy robi błąd systematyczny $1$ m w stronę zawyżenia pomiaru i błąd losowy o rozkładzie $N(0; 0,5)$.

a) Obliczyć wartość przeciętną błędu pomiaru.
b) Wyznaczyć prawdopodobieństwo tego, że błąd, z jakim mierzone są badane przedmioty, nie przekracza $2$ m.

*Cel zadania: Ilustracja, jak błędy (zmienne losowe) sumują się, dając wynikowy rozkład normalny, co jest fundamentem CTG*.

## Zadanie 5
**Rozkład Normalny jako granica – produkcja masowa**

Wytrzymałość stalowych lin pochodzących z produkcji masowej jest zmienną losową o rozkładzie $N(1000 \text{ kg/cm}^2, 50 \text{ kg/cm}^2)$. Obliczyć jaki procent lin ma wytrzymałość mniejszą od $900 \text{ kg/cm}^2$.

*Komentarz: W produkcji masowej (duże $n$) cechy fizyczne produktów naturalnie układają się w rozkład normalny (krzywą Gaussa) dzięki działaniu Centralnego Twierdzenia Granicznego*.

## Zadanie 6
**Zasada $3\sigma$ – odchylenia graniczne**

Automat produkuje nity. Średnice główek nitów są wartościami zmiennej losowej o rozkładzie $N(2; 0,1)$ (w mm). Jakie rozmiary średnicy z przedziału $(2-\epsilon, 2+\epsilon)$ można gwarantować z prawdopodobieństwem $0,95$? 

*Cel zadania: Zrozumienie przedziałów ufności, które wynikają bezpośrednio z własności granicznych rozkładu normalnego*.

## Zadanie 7
**Stabilność częstości – Prawo Wielkich Liczb**

Zmienna losowa $K$ ma rozkład dwumianowy z parametrami $n=5$ i $p=0,8$ (interpretacja: 5 dni pracy, szansa na brak awarii 0,8). Obliczyć prawdopodobieństwo $P(K=k)$ dla $k=0, 1, ..., 5$.

*Cel zadania: Choć $n$ jest małe, zadanie to służy jako punkt wyjścia do dyskusji: co by się stało, gdybyśmy obserwowali system przez 1000 dni? (Wtedy rozkład dążyłby do normalnego – Twierdzenie Moivre’a-Laplace’a)*.

## Zadanie 8
**Sumowanie zmiennych niezależnych**

Mamy dwie niezależne zmienne losowe o rozkładzie wykładniczym (np. czasy obsługi dwóch procesów). Zmienna $X_1$ ma parametr $\lambda$, zmienna $X_2$ też ma parametr $\lambda$. Pokazać (lub obliczyć dla konkretnych danych), że ich suma ma rozkład Erlanga.

*Komentarz: Jest to wstęp do twierdzenia, że suma wielu takich zmiennych dążyłaby do rozkładu normalnego. Dla informatyków ważne w modelowaniu kolejek*.

## Zadanie 9
**Zastosowanie rozkładu normalnego w IT**

Czas (w minutach) między kolejnymi zgłoszeniami abonentów w centrali telefonicznej jest zmienną losową. Przy dużej liczbie abonentów, łączny czas oczekiwania na $n$ zgłoszeń można aproksymować.

Zadanie (uproszczone): Czas między zgłoszeniami ma rozkład wykładniczy ($\lambda=2$). Obliczyć prawdopodobieństwo, że przed upływem 3 minut nastąpi zgłoszenie.

*Cel: Zrozumienie procesu, który w granicy (dla wielu zgłoszeń) jest modelowany procesami Poissona/wykładniczymi.

## Zadanie 10
**Interpretacja histogramu - wizualizacja zbieżności**

Dla danych z zadania o czasie pracy sporządzić histogram prawdopodobieństwa.

*Cel: Zadanie graficzne. Pozwala zobaczyć, jak rozkład prawdopodobieństwa "wygląda" i intuicyjnie zrozumieć, że przy zwiększaniu liczby prób kształt ten będzie przypominał dzwon (rozkład normalny)*.