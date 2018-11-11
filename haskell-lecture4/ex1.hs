import Data.Char

type Name = String
nameToUpper :: Name -> Name
nameToUpper = map toUpper

--algebraiczny typ danych
--algebra - dziedzina matematyki szregujaco podstawowe operacje na zbirach daych, definiuje obliczenia 
--abstrakcyjny typ danych

newtype StringName = StringName String
toName :: StringName -> StringName
toName s = case s of
    (x:xs) -> toUpper x : ma toLower xs
    [] -> []