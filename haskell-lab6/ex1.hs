-- zamiana z monad
-- 3 zadanie bind  i inne - charakterystyczne dla monad
-- co to monada?
-- bedzie troche cwiczen dotyczacych testowania
-- dobrac sie w pary przed zajeciami
-- przygotowac kawalki kodu, ktore bedziemy sobie nawzajem testowac - kod musi sie kompilowac ale ma dzialac nieprawidlowo. 
-- wprowadzenie bledu ktory nie daje bledu kompilacji jest trudne
-- bedziemy testowac przy pomocy bibliotek to testowania 
-- zrobimy to w repozytorium kodu zrodlowego 
-- tam umiescimy kod lacznie z testami
-- mozna jeszcze zaimplementowac mini projekty np. parser
-- warto zerknac przed zajeciami i sie przygotowac mozemy tez pozniej pracowac
-- jestesmy w stanie po 30 min przygotowanie zalozyc projekt i tworzyc testy
-- najlepiej zalozyc ze kod ma nie wiecej niz iles i umowic sie z gory na ustalona liczbe bledow
-- wprowadzanie bledu moze byc ciekawsze niz wyszukiwanie, nie robic trywialnych bledow



(<$<) :: (a->b) -> a -> b
(<$<) = ($)

(>$>) :: a -> (a->b) -> b
x >$> f = f x
infixl 0 >$>


(<.<) :: (b -> c) -> (a -> b) -> a -> c 
(<.<) = (.)


-- () tylko w definicji
(>.>) :: (a->b) -> (b->c) -> (a->c)
f >.> g = g . f
infixl 9 >.>


-- (>.>) :: (a -> b) -> (b -> c) -> (a -> c)
-- f >.> g = g . f
-- infixl 9 >.>

-- Dlaczego nie da się wykonać złożenia safeTail >.> safeTail?
-- poniewaz safetail przyjmuje zwykla tablice i wyrzuca bezpieczna, sam bezpiecznej nie zrozumie
safetail :: [a] -> Maybe [a]
safetail [] = Nothing
safetail (x:xs) = Just xs

--try to handle above problem
extractMaybe :: Maybe a -> a
extractMaybe Nothing = error "nothing" 
extractMaybe (Just x) = x

insertMaybe :: a -> Maybe a
insertMaybe x = Just x


(>^$>) :: (Maybe a) -> (a -> Maybe a) -> Maybe a
ma >^$> f = extractMaybe ma >$> f
infixl 1 >^$>

f1 :: (Ord a, Num a) => a -> Maybe a
f1 x = if x > 0 then Just (x+1) else Nothing

f2 :: (Eq a, Num a) =>  a -> Maybe a
f2 x = if x /= 0 then Just (x*10) else Nothing

-- Ord jest juz Eq
(>.>>) :: (a-> Maybe b) -> (b -> Maybe c) -> (a -> Maybe c)
f >.>> g = \x -> g  >^$> (f x)


