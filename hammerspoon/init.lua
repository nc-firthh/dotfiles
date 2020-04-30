local padding = 12
local mash = { 'ctrl', 'alt', 'cmd' }

function move(x, y, w, h)
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w * x) + padding
  f.y = max.y + (max.h * y) + padding
  f.w = max.w * w - (padding * 2)
  f.h = max.h * h - (padding * 2)

  win:setFrame(f)
end

function maximize()   move(0, 0, 1, 1) end
function leftHalf()   move(0, 0, 0.5, 1) end
function rightHalf()  move(0.5, 0, 0.5, 1) end
function topHalf()    move(0, 0, 1, 0.5) end
function bottomHalf() move(0, 0.5, 1, 0.5) end

hs.hotkey.bind(mash, "Left", leftHalf)
hs.hotkey.bind(mash, "Right", rightHalf)
hs.hotkey.bind(mash, "Up", topHalf)
hs.hotkey.bind(mash, "Down", bottomHalf)
hs.hotkey.bind(mash, "M", maximize)

hs.window.animationDuration = 0 -- disable animations
