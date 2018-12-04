{- 
co to jest strukutra danych? (listy i krotki)
czy funkcja moze byc elementem struktury danych?
podaj przyklad struktury danych z funkcjami
podaj przyklad funkcji wykonujacej operacje na liscie funkcji
czy mozna przypisac funkcie do pojedenczych nazw korzystajac z operatora krotki?
co to jest operator zlozenia?
jak wykorzstac operator zlozenia?
podaj definicje (.)
co to znaczy infix
napisz na 4 sposoby funckje dodajaca 1 do liczby
co to funkcje anonimowe?
Czy skladane funkcje mozemy zostawic bez nawiasu?
Jaka jest alternatywna dla operatora złożenia? (nawiasy)
!!!!dlaczego nie dziala (f . gh) 3 == (fg . h) 3 ? 
jak zadziala dwu argumentowa funkcja gdy przekazemy do niej jeden?
Czy (.) rozumie funkcje jako calosci czy tylko sasiednie bloki?
co to jest biblioteka Data.List?
czy skladajac funkcje musimy uzywac nawiasow? (tak, ale wystarcza na krancach)
Co to jest point-free?
Co to jest operator aplikacji?
Do czego służy?
-}


f1 :: [Char] -> [Char]
f1 = \x -> x ++ "!"