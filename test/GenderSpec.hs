module GenderSpec (spec) where

import Lib (makeGene)
import Gender
import Test.Hspec

z :: Bool
z = True

w :: Bool
w = False

spec :: Spec
spec = do
  describe "gender" $ do
    context "sex chromosomes are ZZ" $ do
      it "returns Male" $ do
        gender (makeGene z z) `shouldBe` Male

    context "sex chromosome are ZW" $ do
      it "returns Female" $ do
        gender (makeGene z w) `shouldBe` Female
