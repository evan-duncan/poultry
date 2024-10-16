module Lib(someFunc
          ,makeGene
          ,Gene(..)) where

data Pair t = Pair t t deriving Foldable
data Gene = Gene { pair :: Pair Bool }

someFunc :: IO ()
someFunc = putStrLn "someFunc"

makeGene :: Bool -> Bool -> Gene
makeGene a b = Gene (Pair a b)
