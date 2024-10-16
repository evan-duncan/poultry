module Gender (gender, GenderType(..)) where

import Lib

data GenderType = Male | Female deriving (Eq, Show)

gender :: Gene -> GenderType
gender g
  | and $ pair g = Male
  | otherwise    = Female
