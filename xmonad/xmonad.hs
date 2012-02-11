import XMonad
import XMonad.Hooks.DynamicLog
import qualified XMonad.StackSet as W
import XMonad.Util.EZConfig
import Graphics.X11.ExtraTypes.XF86
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.NoBorders

myBar = "xmobar"
myPP = xmobarPP { ppCurrent = xmobarColor colorPink "" . wrap "<" ">" }
myTerminal = "urxvt"
myBorderWidth = 1

toggleStrutsKey :: XConfig Layout -> (KeyMask, KeySym)
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

colorGray="#484848"
colorBlue="#0027FF"
colorPink="#FF00CC"

myConfig = defaultConfig
    { layoutHook = smartBorders $ layoutHook defaultConfig
    , terminal = myTerminal
    , modMask = mod4Mask
    , handleEventHook = fullscreenEventHook
    , borderWidth = myBorderWidth
    , normalBorderColor = colorGray
    , focusedBorderColor = colorPink
    } `additionalKeysP`
    [ ("<XF86AudioLowerVolume>", spawn "amixer -q set Master 5%-")
    , ("<XF86AudioRaiseVolume>", spawn "amixer -q set Master 5%+")
    , ("<XF86AudioMute>",        spawn "amixer -q set Master toggle")
    ]

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig
