module Web.AnimationEvent.AnimationEvent
  ( AnimationEvent
  , fromEvent
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
