data Pair t = Pair t t deriving Foldable
data Gene = Gene { pair :: (Pair Bool) }
data Comb = Rose | Pea | Walnut | Single deriving Show

combType :: (Gene, Gene) -> Comb
combType (r, p)
  | express r && not (express p)       = Rose
  | not (express r) && express p       = Pea
  | express r && express p             = Walnut
  | not (express r) && not (express p) = Single
  where express g = or $ pair g

main :: IO ()
main = do
  let r = Gene (Pair True False)
  let p = Gene (Pair False False)
  print $ combType (r,p)
