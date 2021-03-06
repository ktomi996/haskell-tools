{-# LANGUAGE GADTs, ConstraintKinds #-}

module TypeEqualityWithOnlySyntax where

{-@ GADTs, ConstraintKinds @-}

type EqRel a b = a ~ b {-* TypeFamilies + GADTs, TypeFamilies + GADTs, ConstraintKinds *-}

data T a where
  T1 :: a -> T a       {-* GADTSyntax *-}
