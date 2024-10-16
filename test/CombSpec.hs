module CombSpec (spec) where

import Lib (makeGene)
import Comb
import Test.Hspec

spec :: Spec
spec = do
  describe "combType" $ do
    context "gene is RRpp" $ do
      it "returns Rose" $ do
        combType (makeGene True True, makeGene False False) `shouldBe` Rose

    context "gene is Rrpp" $ do
      it "returns Rose" $ do
        combType (makeGene True False, makeGene False False) `shouldBe` Rose

    context "gene is rrPP" $ do
      it "returns Pea" $ do
        combType (makeGene False False, makeGene True True) `shouldBe` Pea

    context "gene is rrPp" $ do
      it "returns Pea" $ do
        combType (makeGene False False, makeGene False True) `shouldBe` Pea

    context "gene is RRPP" $ do
      it "returns Walnut" $ do
        combType (makeGene True True, makeGene True True) `shouldBe` Walnut

    context "gene is RrPP" $ do
      it "returns Walnut" $ do
        combType (makeGene True False, makeGene True True) `shouldBe` Walnut

    context "gene is RRPp" $ do
      it "returns Walnut" $ do
        combType (makeGene True True, makeGene True False) `shouldBe` Walnut

    context "gene is RrPp" $ do
      it "returns Walnut" $ do
        combType (makeGene True False, makeGene True False) `shouldBe` Walnut

    context "gene is rrpp" $ do
      it "returns Single" $ do
        combType (makeGene False False, makeGene False False) `shouldBe` Single
