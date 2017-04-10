function [ p ] = engine_level_1( Dtype, Ttype, Ntype )
%Funkcja stworzy zbi�r sprawno�ci, spr��w i maks. temperatur dla charakterystycznych
%element�w silnika poziomu "1" (najgorszego) na podstawie wpisanego typu wlotu i wylotu
%(szczeg�y na str. 107 w Mattingly - Aircraft Engine Design Second
%Edition.

%Wlot (pi)
switch Dtype
    case 1
        p(1) = 0.9; %samolot podd�wi�kowy z silnikami w gondolach
    case 2
        p(1) = 0.88; %samolot podd�wi�kowy z silnikiem w kad�ubie
    case 3
        p(1) = 0.85; %samolot nadd�wi�kowy z silnikiem w kad�ubie
    otherwise
        error('Poda�e� z�y typ wlotu!')
end

p(2) = 0.8; %Spr�arka (eta)
p(3) = 0.78; %Wentylator (eta)
p(4) = 0.9; %Komora spalania (pi)
p(5) = 0.88; %Komora spalania (eta)
p(6) = 0.8; %Turbina (eta)
p(7) = 0.9; %Dopalacz (pi)
p(8) = 0.85; %Dopalacz (eta)

%Dysza (pi)
switch Ntype
    case 1
        p(9) = 0.95; %dysza zbie�na o sta�ym przekroju
    case 2
        p(9) = 0.93; %dysza zbie�na o zmiennym przekroju
    case 3
        p(9) = 0.9; %dysza zbie�no-rozbie�na o zmiennym przkeroju
    otherwise
         error('Poda�e� z�y typ wylotu!')
end

p(10) = 1110; %Tt4 (K)
p(11) = 1390; %Tt7 (K)
p(12) = 0.99; %Sprawno�� mechaniczna spr�arka - turbina

end