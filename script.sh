#!/bin/bash

#Należy napisać skrypt w języku powłoki „bash”, który kopiuje wszystkie pliki o rozszerzeniu
#określonym przez pierwszy parametr z katalogu bieżącego do podkatalogu określonego przez 
#drugi parametr. Jeżeli podkatalog nie istnieje, to zostanie on utworzony przed kopiowaniem. 
#Skrypt powinien sprawdzać liczbę parametrów, w przypadku błędnego użycia wyświetlać 
#komunikat o błędzie oraz własną składnię

echo Liczba argumentow wywolania = $#

SKLADNIA="Skladnia: ./skrypt.sh <rozszerzenie plikow do skopiowania> <katalog do ktrego chcemy kopiowac pliki> Przez rozszerzenie pliku rozumiemy np .o"

if [[ "$1" != .* ]]; then
    echo "$0": Bledne rozszenie pliku! 1>&2
    echo $SKLADNIA
    exit 1
fi

if [[ $# -ne 2 ]]; then
    echo "$0": Bledna liczba argumentow 1>&2
    echo $SKLADNIA
    exit 1
fi

if [[ ! -d "$2" ]]; then
    echo "$0": Drugi argument nie jest katalogiem. Tworze taki katalog.
    mkdir "$2"
fi

echo Kopiuje elementy z rozszerzeniem "$1" 'do' katalogu "$2"
cp *"$1" "$2"/

exit 0
