module Main where

import           MonadsEx.Ex1 (deserialize)
import           Web          (runApp)

main :: IO ()
main = do
  deserialize
  runApp
