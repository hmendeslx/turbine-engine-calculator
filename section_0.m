function [ wy ] = section_0( T, a, p, M, mdot )
%Funkcja b�dzie liczy� parametry w przekroju w pewnej odleg�o�ci za
%silnikiem. Dane wej�ciowe z funkcji atmoscoesa i warunk�w pocz�kowych.
%tutaj definiowana jest liczba R.

%sprawdzenie poprawno�ci danych
if M <= 0
    error('�le wprowadzona warto�� liczby Macha!')
end
    
if mdot < 0
    error('Wydatek masowy powietrza musi by� dodatni!')    
end

% indywidualna sta�a powietrza
R = 286.9;

%oczywiste obliczenia
k = 1.4;

pt = p * (1 + (k-1)/2 * M^2)^(k/(k-1));
Tt = T * (1 + (k-1)/2 * M^2);

V = M * a;

%przypisujemy warto�ci do element�w zbioru dla czytelno�ci
wy(1) = 0;
wy(2) = mdot;
wy(3) = k;
wy(4) = R;
wy(5) = pt;
wy(6) = Tt;
wy(7) = p;
wy(8) = T;
wy(9) = M;
wy(10) = V;


end

