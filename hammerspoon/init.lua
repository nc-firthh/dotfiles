local padding = 12
local mash = { 'ctrl', 'alt', 'cmd' }

function move(x, y, w, h, p)
  p = p or padding

  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w * x) + p
  f.y = max.y + (max.h * y) + p
  f.w = max.w * w - (p * 2)
  f.h = max.h * h - (p * 2)

  win:setFrame(f)
end

function center()          move(0, 0, 1, 1, 42) end
function maximize()        move(0, 0, 1, 1) end
function topHalf()         move(0, 0, 1, 0.5) end
function leftHalf()        move(0, 0, 0.5, 1) end
function rightHalf()       move(0.5, 0, 0.5, 1) end
function bottomHalf()      move(0, 0.5, 1, 0.5) end
function topLeftHalf()     move(0, 0, 0.5, 0.5) end
function topRightHalf()    move(0.5, 0, 0.5, 0.5) end
function bottomRightHalf() move(0.5, 0.5, 0.5, 0.5) end
function bottomLeftHalf()  move(0, 0.5, 0.5, 0.5) end

hs.hotkey.bind(mash, "C", center)
hs.hotkey.bind(mash, "M", maximize)
hs.hotkey.bind(mash, "K", topHalf)
hs.hotkey.bind(mash, "H", leftHalf)
hs.hotkey.bind(mash, "L", rightHalf)
hs.hotkey.bind(mash, "J", bottomHalf)
hs.hotkey.bind(mash, "1", topLeftHalf)
hs.hotkey.bind(mash, "2", topRightHalf)
hs.hotkey.bind(mash, "3", bottomRightHalf)
hs.hotkey.bind(mash, "4", bottomLeftHalf)

hs.window.animationDuration = 0 -- disable animations
