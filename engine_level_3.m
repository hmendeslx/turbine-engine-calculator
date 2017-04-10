function [ p ] = engine_level_3( Dtype, Ttype, Ntype )
%Funkcja stworzy zbi�r sprawno�ci, spr��w i maks. temperatur dla charakterystycznych
%element�w silnika poziomu "3" na podstawie wpisanego typu wlotu, turbiny i wylotu
%(szczeg�y na str. 107 w Mattingly - Aircraft Engine Design Second
%Edition.

%Wlot (pi)
switch Dtype
    case 1
        p(1) = 0.98; %samolot podd�wi�kowy z silnikami w gondolach
    case 2
        p(1) = 0.96; %samolot podd�wi�kowy z silnikiem w kad�ubie
    case 3
        p(1) = 0.94; %samolot nadd�wi�kowy z silnikiem w kad�ubie
    otherwise
        error('Poda�e� z�y typ wlotu!')
end

p(2) = 0.88; %Spr�arka (eta)
p(3) = 0.86; %Wentylator (eta)
p(4) = 0.94; %Komora spalania (pi)
p(5) = 0.99; %Komora spalania (eta)

%Turbina (eta)
switch Ttype
    case 1
        p(6) = 0.89; %Turbina niech�odzona
    case 2
        p(6) = 0.87; %Turbina ch�odzona
    otherwise
        error('Poda�e� z�y typ turbiny!')
end

p(7) = 0.94; %Dopalacz (pi)
p(8) = 0.96; %Dopalacz (eta)

%Dysza (pi)
switch Ntype
    case 1
        p(9) = 0.98; %dysza zbie�na o sta�ym przekroju
    case 2
        p(9) = 0.97; %dysza zbie�na o zmiennym przekroju
    case 3
        p(9) = 0.95; %dysza zbie�no-rozbie�na o zmiennym przkeroju
    otherwise
         error('Poda�e� z�y typ wylotu!')
end

p(10) = 1780; %Tt4 (K)
p(11) = 2000; %Tt7 (K)
p(12) = 0.995; %Sprawno�� mechaniczna spr�arka - turbina

end