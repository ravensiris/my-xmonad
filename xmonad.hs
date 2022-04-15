import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

myKeybindings c = mkKeymap c $
        [ ("M-<Return>", spawn $ terminal c)
        , ("M-S-q", spawn "xmonad --restart")
        , ("M-q", kill)
        ]

main :: IO ()
main = xmonad $ def
        { modMask = mod4Mask
        , terminal = "alacritty"
        , keys = myKeybindings
        }
