--Title -Company logo----------------------------------------------------------------------------------------
--By: RadinW
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
display.setStatusBar(display.HiddenStatusBar)

local scrollspeed = 0.7

local OutrosoundChannel
local OutroSound = audio.loadSound(  "Sounds/Outro.mp3")--.. setting a variable to an mp3 file

local Companylogo = display.newImageRect("images/Companylogo.png", 192,256)
Companylogo.alpha = 0
Companylogo.x = 500
Companylogo.y = 400

local function MoveCompanylogo(event)
	Companylogo.x = Companylogo.x + scrollspeed
	Companylogo.alpha = Companylogo.alpha + 0.005
	Companylogo:rotate(4,5)
end

OutrosoundChannel = audio.play(OutroSound)
Runtime:addEventListener("enterFrame", MoveCompanylogo)

