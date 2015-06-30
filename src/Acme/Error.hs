------------------------------------------------------------------------
-- |
-- Module: Acme.Error
--
-- Flip a table (or any other string of your choosing) to demonstrate your
-- complete and utter rage towards the situation.
--
-- Usage:
--
-- @
-- impossible :: a
-- impossible = (╯°□°╯) "┻━┻"
-- @
--
-- Output:
--
-- @
-- λ impossible
-- *** Exception: (╯°□°）╯︵┻━┻
-- @
--
-- Usage:
--
-- @
-- head []    = (╯°□°╯) "Prelude.head: empty list"
-- head (x:_) = x
-- @
--
-- Output:
--
-- @
-- λ head []
-- *** Exception: (╯°□°）╯︵ʇsıl ʎʇdɯǝ :pɐǝɥ.ǝpnlǝɹd
-- @
--

module Acme.Error (
    -- * (╯°□°）╯︵┻━┻
      (╯°□°╯)
    ) where

import Data.Char (toLower)
import Data.Maybe (fromMaybe)

-- | Stops execution with rage.
(╯°□°╯) :: String -> a
(╯°□°╯) (┻━┻) = error ("(╯°□°）╯︵" ++ flipString (┻━┻))

flipString :: String -> String
flipString = map (go . toLower) . reverse
  where
    go c = fromMaybe c (lookup c (zip xs ys))
    xs = "abcdefghijklmnopqrstuvwxyz?!"
    ys = "ɐqɔpǝɟƃɥıɾʞlɯuodbɹsʇnʌʍxʎz¿¡"
