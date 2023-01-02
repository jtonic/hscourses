module Suite where

import           OpticsByExample.Ex1
import           Test.Tasty          (testGroup)
import           Test.Tasty.HUnit

suiteOne = testGroup "suite one" [testSum, testEven, testReversed]

suiteTwo = testGroup "suite two" [testShiftAtom]

testSum = testCase "2+2=4" $ 2 + 2 @?= 4

testEven =
  testCase "the number should be even" $ assertBool "8 should be even" $ even 8

testReversed =
  testCase
    "list and its reversed have same size"
    (length ns @?= (length . reverse) ns)
  where
    ns = [1, 2, 3]

testShiftAtom = testCase "shifted atom is correct" $ shiftAtomX' atom1 @?= atom2
  where
    atom1 = Atom {_element = "C", _point = Point {_x = 1.0, _y = 2.0}}
    atom2 = Atom {_element = "C", _point = Point {_x = 2.0, _y = 2.0}}
