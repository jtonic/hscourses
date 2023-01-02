module Main where

import           Suite
import           Test.Tasty

main :: IO ()
main = do
  defaultMain tests

tests :: TestTree
tests = testGroup "All tests" [suiteOne, suiteTwo]
