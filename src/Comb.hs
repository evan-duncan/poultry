module Comb (combType, CombType(..)) where

import Lib

data CombType = Rose | Pea | Walnut | Single deriving (Eq, Show)

combType :: (Gene, Gene) -> CombType
combType (r, p)
  | express r && not (express p)       = Rose
  | not (express r) && express p       = Pea
  | express r && express p             = Walnut
  | not (express r) && not (express p) = Single
  | otherwise                          = Single
  where express g = or $ pair g
