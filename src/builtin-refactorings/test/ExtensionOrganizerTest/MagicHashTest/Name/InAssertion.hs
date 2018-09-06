{-# LANGUAGE MagicHash,
             TypeOperators,
             MultiParamTypeClasses
             #-}

module InAssertion where

-- TODO: implicit assert

class C# a where          {-* MagicHash *-}
  f1 :: a -> a

class a :!: b where          {-* MultiParamTypeClasses *-} 
  f2 :: a -> b               {-* TypeOperators *-}


g1 :: C# a# => a# -> a#      {-* MagicHash, MagicHash, MagicHash, MagicHash *-}
g1 = id

g2 :: (a :!: b#) => a -> b# -> ()     {-* MagicHash, MagicHash, TypeOperators *-}
g2 _ _ = ()

g3 :: (C# a, (a :!: b#)) => a -> b# -> ()   {-* MagicHash, MagicHash, MagicHash, TypeOperators *-}
g3 _ _ = ()
