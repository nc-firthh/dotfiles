hs.window.animationDuration = 0 -- disable animations

local defaultPadding = 8
local defaultMash  = { 'ctrl', 'alt', 'cmd' }

function move(x, y, w, h, p)
  p = p or defaultPadding

  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  local aspectRatio = max.w / max.h

  f.x = max.x + (max.w * x) + p * aspectRatio
  f.y = max.y + (max.h * y) + p
  f.w = max.w * w - (p * aspectRatio * 2)
  f.h = max.h * h - (p * 2)

  win:setFrame(f)
end

function bindHotkey(key, func, mash)
  mash = mash or defaultMash
  hs.hotkey.bind(mash, key, func)
end

function center()        move(0.0, 0.0, 1.0, 1.0, 64) end
function fill()          move(0.0, 0.0, 1.0, 1.0) end
function top50()         move(0.0, 0.0, 1.0, 0.5) end
function left60()        move(0.0, 0.0, 0.6, 1.0) end
function left50()        move(0.0, 0.0, 0.5, 1.0) end
function left40()        move(0.0, 0.0, 0.4, 1.0) end
function right60()       move(0.4, 0.0, 0.6, 1.0) end
function right50()       move(0.5, 0.0, 0.5, 1.0) end
function right40()       move(0.6, 0.0, 0.4, 1.0) end
function bottom50()      move(0.0, 0.5, 1.0, 0.5) end
function topLeft50()     move(0.0, 0.0, 0.5, 0.5) end
function topRight50()    move(0.5, 0.0, 0.5, 0.5) end
function bottomLeft50()  move(0.0, 0.5, 0.5, 0.5) end
function bottomRight50() move(0.5, 0.5, 0.5, 0.5) end

bindHotkey("C", center)
bindHotkey("F", fill)
bindHotkey("K", top50)
bindHotkey("N", left40)
bindHotkey("H", left50)
bindHotkey("U", left60)
bindHotkey("I", right40)
bindHotkey("L", right50)
bindHotkey("M", right60)
bindHotkey("J", bottom50)
bindHotkey("1", topLeft50)
bindHotkey("2", topRight50)
bindHotkey("3", bottomRight50)
bindHotkey("4", bottomLeft50)

