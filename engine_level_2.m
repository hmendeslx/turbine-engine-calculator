function [ p ] = engine_level_2( Dtype, Ttype, Ntype )
%Funkcja stworzy zbi�r sprawno�ci, spr��w i maks. temperatur dla charakterystycznych
%element�w silnika poziomu "2" na podstawie wpisanego typu wlotu, turbiny i wylotu
%(szczeg�y na str. 107 w Mattingly - Aircraft Engine Design Second
%Edition.

%Wlot (pi)
switch Dtype
    case 1
        p(1) = 0.95; %samolot podd�wi�kowy z silnikami w gondolach
    case 2
        p(1) = 0.93; %samolot podd�wi�kowy z silnikiem w kad�ubie
    case 3
        p(1) = 0.9; %samolot nadd�wi�kowy z silnikiem w kad�ubie
    otherwise
        error('Poda�e� z�y typ wlotu!')
end

p(2) = 0.84; %Spr�arka (eta)
p(3) = 0.82; %Wentylator (eta)
p(4) = 0.92; %Komora spalania (pi)
p(5) = 0.94; %Komora spalania (eta)

%Turbina (eta)
switch Ttype
    case 1
        p(6) = 0.85; %Turbina niech�odzona
    case 2
        p(6) = 0.83; %Turbina ch�odzona
    otherwise
        error('Poda�e� z�y typ turbiny!')
end

p(7) = 0.92; %Dopalacz (pi)
p(8) = 0.91; %Dopalacz (eta)

%Dysza (pi)
switch Ntype
    case 1
        p(9) = 0.97; %dysza zbie�na o sta�ym przekroju
    case 2
        p(9) = 0.96; %dysza zbie�na o zmiennym przekroju
    case 3
        p(9) = 0.93; %dysza zbie�no-rozbie�na o zmiennym przkeroju
    otherwise
         error('Poda�e� z�y typ wylotu!')
end

p(10) = 1390; %Tt4 (K)
p(11) = 1670; %Tt7 (K)
p(12) = 0.99; %Sprawno�� mechaniczna spr�arka - turbina

end