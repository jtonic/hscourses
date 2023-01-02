{-# LANGUAGE TemplateHaskell #-}

module OpticsByExample.Ex1 where

import           Control.Lens hiding (element)

data Point =
  Point
    { _x :: Double
    , _y :: Double
    }
  deriving (Show, Eq)

data Atom =
  Atom
    { _element :: String
    , _point   :: Point
    }
  deriving (Show, Eq)

data Molecule =
  Molecule
    { _atoms :: [Atom]
    }
  deriving (Show, Eq)

-- make lenses for the model elements
$(makeLenses ''Point)

$(makeLenses ''Atom)

$(makeLenses ''Molecule)

atom1 = Atom {_element = "C", _point = Point {_x = 1.0, _y = 2.0}}

atom2 = Atom {_element = "O", _point = Point {_x = 2.0, _y = 2.0}}

molecule = Molecule {_atoms = [atom1, atom2]}

-- The normal way of modification
shiftAtomX' :: Atom -> Atom
shiftAtomX' (Atom e (Point x y)) = Atom e (Point (x + 1) y)

-- the modification of a structure's portion using lenses
shiftAtomX :: Atom -> Atom
shiftAtomX = over (point . x) (+ 1)

atomX :: Double
atomX = view (point . x) atom1
