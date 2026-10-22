module Web.AnimationEvent.EventTypes
  ( animationcancel
  , animationend
  , animationiteration
  , animationstart
  ) where

import Web.Event.Event (EventType(..))

animationstart :: EventType
animationstart = EventType "animationstart"

animationend :: EventType
animationend = EventType "animationend"

animationiteration :: EventType
animationiteration = EventType "animationiteration"

animationcancel :: EventType
animationcancel = EventType "animationcancel"

