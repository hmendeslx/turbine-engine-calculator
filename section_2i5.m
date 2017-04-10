function [ wy, lLPC ] = section_2i5( we, p, BR, piLPC )
%Funkcja b�dzie liczy� parametry w przekroju za spr�ark� niskiego
%ci�nienia. Trzeba do niej wprowadzi� opr�cz standardowych danych tak�e
%stopie� dwup., ca�kowity spr� spr�arki, spr� LPC
%zwraca te� prac� LPC

%sprawdzenie poprawno�ci danych
if BR <= 0
    error('�le wprowadzony stosuek dwuprzep�ywowo�ci!')
elseif piLPC <= 1
    error('�le wprowadzony spr�!')
end

%wczytujemy dane
etac = p(2);

mdot = we(2);
k = we(3);
R = we(4);
pt = we(5);
Tt = we(6);
V = we(10);

%obliczenia
mdot_core = mdot /(BR + 1);

pt2i5= piLPC * pt;
lLPC = k/(k - 1) * R * Tt * (piLPC^((k - 1)/k) - 1) /etac;
Tt2i5 = Tt + lLPC/ (k * R /(k - 1));

T2i5 = Tt2i5 - (k - 1)*V^2/(2*k*R);
M = V/sqrt(k*R*T2i5);

p2i5 = pt2i5/ (1 + (k - 1)/2 * M^2)^(k/(k - 1));

%zapisujemy warto�ci
wy(1) = 2.5;
wy(2) = mdot_core;
wy(3) = k;
wy(4) = R;
wy(5) = pt2i5;
wy(6) = Tt2i5;
wy(7) = p2i5;
wy(8) = T2i5;
wy(9) = M;
wy(10) = V;

end

