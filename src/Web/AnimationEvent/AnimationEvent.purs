-- | Implementation of AnimationEvent interface from
-- | [CSS Animations Level 1](https://www.w3.org/TR/css-animations-1/)
module Web.AnimationEvent.AnimationEvent
  ( AnimationEvent
  , animationName
  , elapsedTime
  , fromEvent
  , pseudoElement
  , toEvent
  ) where

import Data.Maybe (Maybe)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (Event)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import data AnimationEvent :: Type

fromEvent :: Event -> Maybe AnimationEvent
fromEvent = unsafeReadProtoTagged "AnimationEvent"

toEvent :: AnimationEvent -> Event
toEvent = unsafeCoerce

foreign import animationName :: AnimationEvent -> String
foreign import elapsedTime :: AnimationEvent -> Number
foreign import pseudoElement :: AnimationEvent -> String
