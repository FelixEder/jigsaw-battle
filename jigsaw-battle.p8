pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
-- game states

function _init()
	scene="menu"
end

function _update()
	if (scene=="menu") then
		menu_update()
	elseif (scene=="game") then
		game_update()
	elseif (scene=="end") then
		end_update()
	end
end

function _draw()
	if (scene=="menu") then
		menu_draw()
	elseif (scene=="game") then
		game_draw()
	elseif (scene=="end") then
		end_draw()
	end
end
-->8
--jigsaw

-->8
--grid
-->8
--scene_menu
function menu_update()
	if btnp(❎) then
		scene = "game"
	end
end

function menu_draw()
	cls()
	printc("press ❎ to play", 50)
end
-->8
--scene_game
function game_update()
	--todo
	if btnp(❎) then
		scene = "end"
	end
end

function game_draw()
	cls()
	printc("game", 50)
end
-->8
--scene_end
function end_update()
	if btnp(❎) then
		scene = "menu"
	end
	--todo
end


function end_draw()
  cls()
  printc("end screen", 20)
  printc("press ❎ to play again", 80)
end
-->8
--util

--horizontally centered text
function printc(txt, y, c)
	y = y or 50
	c = c or 6
	print(txt, 64 - #txt*2, y, c)
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
