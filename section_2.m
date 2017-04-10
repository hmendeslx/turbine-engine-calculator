function [ wy ] = section_2( we, p, M0, M )
%Funkcja b�dzie liczy� parametry w przekroju przed spr�ark� na podstawie
%danych z funkcji przekroj_1, parametr�w zale�nych od klasy silnika oraz
%zadanej warto�ci liczby macha w tym miejscu (lub warto�ci domy�lnej 0.5 -
%wpisz -1). DO TEJ FUNKCJI TRZEBA WPROWADZI� LICZB� MACHA LOTU
%SAMOLOTU/SILNIKA M0!

%W tej funkcji uwzgl�dnione s� straty zwi�zane z liczb� Macha przed wlotem

%sprawdzenie poprawno�ci danych
if M == -1
    M = 0.5;
elseif M <= 0 || M0 <= 0
    error('�le wprowadzona warto�� liczby Macha!')
end

%straty w funkcji liczby macha
if M0 <= 1
    pir = 1;
elseif (M0 > 1) && (M0 <= 5)
    pir = 1 - 0.075 * (M0 - 1)^1.35;
elseif M0 > 5
    pir = 800/( M0^4 + 935);
end

%deklaracja zmiennych z danych wej�ciowych dla czytelniejszego kodu
%pif=...
pidk = p(1);
pid = pidk * pir;

k = we(3);
R = we(4);
pt = we(5);
Tt = we(6);

%obliczenia
pt2 = pt * pid;

p2 = pt2 / (1 + (k-1)/2 * M^2)^(k/(k-1));
T2 = Tt / (1 + (k-1)/2 * M^2);

V = M * sqrt(k * R * T2);

%przypisujemy warto�ci do element�w zbioru dla czytelno�ci
wy(1) = 2;
wy(2) = we(2);
wy(3) = k;
wy(4) = R;
wy(5) = pt2;
wy(6) = Tt;
wy(7) = p2;
wy(8) = T2;
wy(9) = M;
wy(10) = V;


end

