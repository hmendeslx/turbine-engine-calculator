function [ wy ] = section_1( we, M )
%Funkcja b�dzie liczy� parametry spi�trzenia w przekroju wlotowym silnika
%na postawie odpowiednio: temperatury, ci�nienia i liczby macha lotu i 
%wyrzuca tablic� warto�ci. Liczb� macha trzeba zdefiniowa� lub wpisa� -1
%aby wczytana zosta�a warto�� domy�lna 0.8.

%sprawdzenie poprawno�ci danych
if M == -1
    M = 0.8;
elseif M <= 0
    error('�le wprowadzona warto�� liczby Macha!')
end

%zamiana tablicy wej�ciowej na �atwe do odczytu dane
k = we(3);
R = we(4);
pt = we(5);
Tt = we(6);

%oczywiste obliczenia
p = pt / (1 + (k-1)/2 * M^2)^(k/(k-1));
T = Tt / (1 + (k-1)/2 * M^2);

V = M * sqrt(k * R * T);

%przypisujemy warto�ci do element�w zbioru dla czytelno�ci
wy(1) = 1;
wy(2) = we(2);
wy(3) = k;
wy(4) = R;
wy(5) = pt;
wy(6) = Tt;
wy(7) = p;
wy(8) = T;
wy(9) = M;
wy(10) = V;

end

