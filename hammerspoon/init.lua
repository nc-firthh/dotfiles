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

function center()        move(0, 0, 1, 1, 42) end
function fill()          move(0, 0, 1, 1) end
function top50()         move(0, 0, 1, 0.5) end
function left60()        move(0, 0, 0.6, 1) end
function left50()        move(0, 0, 0.5, 1) end
function left40()        move(0, 0, 0.4, 1) end
function right60()       move(0.4, 0, 0.6, 1) end
function right50()       move(0.5, 0, 0.5, 1) end
function right40()       move(0.6, 0, 0.4, 1) end
function bottom50()      move(0, 0.5, 1, 0.5) end
function topLeft50()     move(0, 0, 0.5, 0.5) end
function topRight50()    move(0.5, 0, 0.5, 0.5) end
function bottomLeft50()  move(0, 0.5, 0.5, 0.5) end
function bottomRight50() move(0.5, 0.5, 0.5, 0.5) end

hs.hotkey.bind(mash, "C", center)
hs.hotkey.bind(mash, "F", fill)
hs.hotkey.bind(mash, "K", top50)
hs.hotkey.bind(mash, "N", left40)
hs.hotkey.bind(mash, "H", left50)
hs.hotkey.bind(mash, "U", left60)
hs.hotkey.bind(mash, "I", right40)
hs.hotkey.bind(mash, "L", right50)
hs.hotkey.bind(mash, "M", right60)
hs.hotkey.bind(mash, "J", bottom50)
hs.hotkey.bind(mash, "1", topLeft50)
hs.hotkey.bind(mash, "2", topRight50)
hs.hotkey.bind(mash, "3", bottomRight50)
hs.hotkey.bind(mash, "4", bottomLeft50)

hs.window.animationDuration = 0 -- disable animations
