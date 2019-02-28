--Displaying shapes 
--Radin.W
--Tuesday feb 26 2019-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
--hide the status bar
display.setStatusBar(display.HiddenStatusBar)
display.setDefault("background", 204/255, 0/255, 204/255)

--display parallelogram
local verticesParallelogram = {0,-200, 200,-200, 0,100, -200,100}
local myParallelogram = display.newPolygon (250, 350, verticesParallelogram)
display.setColor("parallelogram", 102/255, 0/255, 204/255)

--display trapazoid
local verticesTrapazoid = {-150,-175, 100,-175, 150,0, -200,0}
local myTrapazoid = display.newPolygon (500,500, verticesTrapazoid)
display.setDefaultColor("myTrapazoid", 255/255, 0/255, 0/255)

--display octagon
--<<<<<<< HEAD
local verticesOctagon = {-250,-500, 0,-500, 100,-350, 100,-250, 0,-100, -250,-100, -300,-250, -300,-400}
local myOctagon = display.newPolygon (512,384, verticesOctagon)
--=======
local verticesOctagon = {-250,-500, 0,-500, 100,-350, 100,-250, 0,-100, -250,-100, -300,-250, -300,-350}
local myOctagon = display.newPolygon (512,368, verticesOctagon)
display.setDefaultColor("myOctagon", 127/255, 0/255, 255/255)
-->>>>>>> fdd819ed063bfc28ec5f1eba902a689d5aebed17
